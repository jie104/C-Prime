//
// Created by zxj on 2023/4/29.
//

#include <iostream>
#include <string>

///类对其继承而来的成员的访问权限受两个因素的影响：
///1、基类中该成员的访问说明符，2、在派生类的派生列表中的访问说明符
class  Base{
public:
    void pub_mem();     //public成员

    friend class Pal1;   //Pal在访问Base的派生类时不具有特殊性

    std::size_t size() const {return n;}
protected:
    int prot_mem;       //protect成员
    std::size_t n;
private:
    char priv_mem;  //private成员
};


///Derived使用了私有继承，所以继承而来的成员size和n是Derived的私有成员。
///使用using声明语句可以改变这些城元旦可访问性。改变之后，Derived用户将可以
///使用size成员，而Derived
class Derived:private Base{
public:
    using Base::size;
protected:
    using Base::n;
};

class Pub_Derv:public Base{
    //正确：派生类能访问protected对象
    int f(){return prot_mem;}
    //错误：private成员对于派生类来说不可访问
    char g(){return priv_mem;}

};

///派生类访问说明符对于派生类的成员（及友元）能否直接访问其基类的成员没什么影响
///对基类成员的访问权限只与基类中的访问说明符有关
struct Priv_Drev:private Base{
    //private不影响派生类的访问权限
    int f1() const{return prot_mem;}
};

///访问说明符可以控制继承自派生类的新类的访问权限
struct Derived_from_public:public Pub_Derv{
    //正确:Base::prot_mem在pub_Derv中仍然是protected
    int use_base(){return prot_mem;}

};

struct Derived_from_Private:public Priv_Derv{
    //错误：Base：：prot_mem在Priv_Derv中是private
    int use_base(){return prot_mem;}
};

struct Prot_Derv: protected Base{
    int f2(){
        pub_mem();
        int a=prot_mem;
    }
};

class Sneaky:public Base{
protected:
    int j;
};

class Pal1{
public:
    ///Pal1是Base的友元，所以Pal1能够访问Base对象的成员，这种访问性
    ///包括了Base对象内内嵌在其派生类的情况
    int f(Base b){return b.prot_mem;}
    int f2(Sneaky s){return s.j;}   //错误：Pal1不是Sneaky的友元
    //对于基类的访问权限由基类本身控制，即使对于派生类的基类部分也是如此
    int f3(Sneaky s){return s.prot_mem;}

};
class D4:public Pal1{
public:
    void mem(Base b){
        return b.pub_mem;   //错误：友元关系不能继承
    }
};

class D5:Base{};    //默认public继承
struct D6:Base{};   //默认private继承

int main(){
    ///派生类访问说明符的目的是控制派生类成员（包括派生类的派生类在内）对于基类成员的
    ///访问权限
    Pub_Derv d1;   //继承自Base的成员是public
    Priv_Drev d2;   //继承自Base的成员是private
    d1.pub_mem();   //正确：pub_mem在派生类中是public
    d2.pub_mem();   //错误：pub_mem在派生类中是private


}