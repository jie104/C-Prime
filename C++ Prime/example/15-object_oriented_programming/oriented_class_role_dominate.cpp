//
// Created by zxj on 2023/5/6.
//

#include "include/bulk_quote.hpp"
#include "include/quote.hpp"
struct Base{
    Base():mem(0){}
    int memfcn();
protected:
    int mem;
};

///和其他作用域一样，派生类也能重用定义在其直接基类或间接基类中的名字，
///此时定义在内层作用域的名字将隐藏隐藏定义在外层作用域的名字
struct Derived:Base{
    Derived(int i):mem(i){ }
    int memfcn(int);    //隐藏基类的memfcn
    int get_mem(){return mem;}

    //通过作用域运算符使用隐藏的成员
    int get_base_mem(){return Base::mem;}
protected:
    int mem;    //隐藏基类中的mem
};


///基类与派生类的虚函数接受的实参不同，则无法通过基类的引用或指针调用派生类的虚函数
class Base1{
public:
    virtual int fcn();

};

class D1:public Base1{
public:
    int fcn(int);   //形参列表与Base中的fcn不一致
    virtual void f2();  //是一个新的虚函数，在Base中不存在
};

class D2:public D1{
public:
    int fcn(int);   //是一个非虚函数，隐藏了D1::fcn(int)
    int fcn();  //覆盖了Base的虚函数fcn
    void f2();  //覆盖了D1的虚函数f2
};

int main(){
    Bulk_quote bulk;
    Bulk_quote *bulkP=&bulk;    //静态类型与动态类型保持一致
    Quote *itemP=&bulk;     //静态类型与动态类型不一致
    bulkP->discount_policy();   //正确：bulkP的类型是Bulk_quote
    ///itemP的类型是Quote的指针，意味着对于discount_policy的搜索将从Quote开始
//    itemP->discount_policy();   //错误：itemP的类型是Quote*

    Derived d(42);
    std::cout << d.get_mem() << std::endl;
    std::cout << d.get_base_mem() << std::endl;

    ///声明在内层作用域的函数并不会重载声明在外层作用域的函数
    ///即使派生类成员和基类成员的形参列表不一致，基类成员也仍然会被隐藏掉
    Derived d1(20);
    Base b;
    b.memfcn(); //调用Base::memfcn
    d1.memfcn(10);   //调用Derived::memfcn
    d1.memfcn();    ///错误：参数列表为空的memfcn被隐藏
    d1.Base::memfcn();   //正确调用Base::memfcn

    ///通过基类调用隐藏的虚函数
    ///此处通过基类的指针进行，因为fcn是虚函数，所以编译器产生的代码将在
    ///运行时确定使用虚函数的哪个版本，判断依据是该指针所绑定对象的真实类型
    Base1 bobj; D1 d1obj; D2 d2obj;
    Base1 *bp1=&bobj,*bp2=&d1obj,*bp3=&d2obj;
    bp1->fcn(); //虚调用，将在运行时调用Base::fcn
    bp2->fcn(); //虚调用，将在运行时调用Base::fcn
    bp3->fcn(); //虚调用，将在运行时调用D2::fcn


    ///每个指针分别指向继承体系中的一个类型，因为Base类中没有f2()，所以
    ///第一条语句是非法的，即使当前指针碰巧指向一个派生类对象也无济于事
    D1 *d1p=&d1obj; D2 *d2p=&d2obj;
    bp2->f2();  //错误：Base没有名为f2的成员
    d1p->f2();  //虚调用，将在运行时调用D1::f2()
    d2p->f2();  //虚调用，将在运行时调用D2::f2()，？？？？？

    ///指针指向D2类型的对象，但由于调用的是非虚函数，所以不会发生动态绑定
    ///实际调用的函数版本由指针的静态类型决定
    Base1 *p1=&d2obj;D1 *p2=&d2obj;D2 *p3=&d2obj;
    p1->fcn(42);    //错误：Base中没有接受一个int的fcn
    p2->fcn(42);    //静态绑定，调用D1::fcn(int)
    p3->fcn(42);    //静态绑定，调用D2::fcn(int)



}