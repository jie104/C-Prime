//
// Created by zxj on 2023/4/25.
//
#include <string>
#include <iostream>
#include "include/bulk_quote.hpp"
#include "include/derived_quote.hpp"
#include <memory>
#include "include/disc_quote.hpp"

//动态绑定
///在C++语言，当我们使用基类的引用（或指针）调用一个虚函数时将发生动态绑定
double print_total(std::ostream &os,
                   const Quote &item,size_t n){
    double ret=item.net_price(n);
    os << "ISBN: " << item.isbn()
        << " # sold: " << n << " total due: " << ret << std::endl;
    return ret;
}


//继承与静态成员
class Base{
public:
    static void statement(){
//        std::cout << "c: " << c;
    };
    void b(){
        a;
        this->a++;
        std::cout << "a: " << a << std::endl;

    }
private:
    static int a;
    int c;
};
int Base::a=1;

class Derived:public Base{
    void f(const Derived&);
};

void Derived::f(const Derived &derived_obj){
//    Base::statement();  //正确：Base定义了statement
//    Derived::statement();   //正确：Derived继承了statement
    //正确：派生类的对象能访问基类的静态成员
//    derived_obj.statement();    //通过Derived对象访问
//    statement();    //通过this对象访问
}

class D1:public Base{};
class D2:public D1{};


//防止继承的发生
///C++11新标准提供了一种防止继承发生的方法，即在类后跟一个关键字final
class NoDerived final {};   //NoDerived不能作为基类

//Last是final的，不能继承Last
class Last final :Base{};   //Last不能作为基类
//class Bad:NoDerived { };    //错误：NoDerived是final
//class Bad2:Last{};  //错误：Last是final

struct B{
    virtual void f1(B&,int) const;
//    virtual void f2();
//    void f3();
};
void B::f1(B &b,int x=2) const {
    std::cout << "11111  " << x << std::endl;
}

///新标准中可以使用override关键字来说明派生类中的虚函数，这样可以让程序员的意图更清晰
///同时让编译器为我们发现一些错误
struct F2:B{
//    void f1(F2&,int y) const override;
//    void f2(int) override;  //错误：B没有形如f2(int)的函数
//    void f3() override; //错误：f3不是虚函数
//    void f4() override; //错误：B没有名为f4的函数
};

//void F2::f1(F2 &f,int y=3.5) const {
//    std::cout << "222222 " << y << std::endl
//}

struct D3:B{
    ///从B继承f2()和f3(),覆盖f1(int)
//    void f1(int) const final;   //不允许后续的其他类覆盖f1(int)
};

struct D4:D3{
    void f2();      //正确：覆盖从间接基类B继承而来的f2
    void f1(int) const;     //错误：D3已经将f2声明成final
};

///派生类的成员或友元只能通过派生类对象来访问基类的受保护成员
///派生类对于一个基类对象中的受保护成员没有任何访问特权
class Base1 {
protected:
    int prot_mem;
};

class Sneaky:public Base1{
    friend void clobber(Sneaky&);   //能访问Sneaky::prot_mem
    friend void clobber(Base1&);    //不能访问 Base::prot_mem
    int j;  //j默认是private
};

void clobber(Sneaky &s){s.j=s.prot_mem=0;}
void clobber(Base1 &b){b.prot_mem=0}


int main(){
    Quote basic;
    Bulk_quote bulk;
    print_total(std::cout,basic,20);    //调用Quote的net_price
    print_total(std::cout,bulk,20);     //调用Bulk_quote的net_price

    ///因为派生类对象中含有与其基类对应的部分，所以，能把派生类的对象当成基类对象使用
    ///而且也能将基类的指针或引用绑定到派生类对象中的基类部分
    ///在派生类对象中含有与其基类对应的组成部分，这一事实是继承的关键所在
    Quote item;     //基类对象
    Quote *p=&item; //p指向Quote对象
    p=&bulk;    //p指向bulk中的Quot部分
    Quote &r=bulk;  //r绑定到bulk的Quote部分
//
    Base B;
    B.statement();
    Base::statement();

    Quote q("jie",20000000);
    Bulk_quote q1("apple",30000,20,30);
    print_total(std::cout,q,10);
    print_total(std::cout ,q1,10);

    Derived_quote q2("xiaojie",20,10,0.5);
    std::cout << "sales price: " << q2.net_price(50) << std::endl;

    ///不存在从基类向派生类的隐式类型转化
    Quote base;
//    Bulk_quote* bulkp=&base;    //错误：不能将基类转化为派生类
//    Bulk_quote& bulkRef=base;   //错误：不能将基转换为派生类

    ///即使一个基类指针或引用绑定在一个派生类对象上，也不能执行从基类向派生类对象转换
    std::shared_ptr<Bulk_quote> bulk1(new Bulk_quote);
    std::shared_ptr<Quote> itemP(new Quote);    //动态类型是Bulk_quote
    itemP=bulk1;
//    Bulk_quote *bulkP=itemP;    //错误：不能将基类转换为派生类

    ///如果在基类中含有一个或多个虚函数，则可以使用dynamic_cast请求一个类型转换
    ///该转换检查将在运行时执行
    auto b1=std::dynamic_pointer_cast<Bulk_quote>(itemP);


    ///拷贝构造和赋值运算符，不是虚函数，所以给基类的构造函数传递一个派生类
    ///对象时，实际运行的构造函数是基类中定义的那个，显然该构造函数只能处理自己的成员
    Bulk_quote bulk2;    //派生类对象
    Quote item1(bulk);   //使用Quate::Quate(const Quate&)构造函数
    item=bulk;  //调用Quote::operator=(const Quote&)

    //对虚函数的调用可能在运行时才被解析
    ///当对某个虚函数通过指针或引用调用时，编译器产生的代码直到运行时才能确定
    ///应该调用哪个版本的函数，被调用的函数是与绑定到指针或引用上的对象的动态类型相匹配、
    Quote base1("0-201-82470-1",50);
    print_total(std::cout,base1,10);    //调用Quote::net_price
    Bulk_quote derived("0-201-83470-1",50,5,19);
    print_total(std::cout,derived,10);  //调用Bulk_quote::net_price

    //动态绑定只有在我们通过指针或引用调用虚函数时才会发生
    base1=derived;  //把derived的Quote部分拷贝给base
    base1.net_price(20);    //调用Quote::net_price

//回避虚函数机制
///某些情况下，希望对虚函数的调用不要进行动态绑定，而是强迫其执行虚函数的某个特定版本
///作用域运算符可以实现这一点
    Bulk_quote * bbbb;
    ///通常情况下只有成员函数或(友元)中的代码才需要使用作用域运算符来回避
    ///虚函数的机制
    double undiscounted=bbbb->Quote::net_price(42);

    //含有纯虚函数的类是抽象基类
    //含有虚函数的类是抽象基类。抽象基类负责定义接口，后续其他类可以覆盖该接口
    //不能创建抽象基类的对象，Disc_quOte的派生类必须给出自己的net_price定义
    //否则他们仍将是抽象基类
    Disc_quOte  discounted; //错误：不能定义Disc_quote对象

    Bulk_quote bulk5;    //正确：Bulk_quote中没有纯虚函数


}