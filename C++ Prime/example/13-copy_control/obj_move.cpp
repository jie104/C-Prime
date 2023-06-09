//
// Created by zxj on 2023/4/17.
//

#include <utility>
#include <string>

class Foo{
public:
    Foo()=default;
    Foo(const Foo&);    //拷贝构造函数

};




///新标准一个最主要的特性是可以移动而非拷贝对象的能力
///在其中某些情况下，对象拷贝后就立即被销毁，在这些情况下，
///移动，而非拷贝对象会大幅提升性能

///右值引用
///所谓右值引用就是必须绑定到右值的引用，通过&&而不是&来获取右值引用
///右值引用一个重要的性质---只能绑定到一个将要销毁的对象

///左值引用不能将转化的表达式、字面值常量或返回右值的表达式；
/// 右值表达式有着完全相反的绑定特性
int main(){


int i=42;
int &r=i;   //正确：r引用i
int &&rr=i; //错误：不能将一个右值表达式绑定到一个左值上
int &r2=i*42;   //i*42是一个右值
const int &r3=i*42; //正确：可以将一个const的引用绑定到一个右值上
int &&rr2=i*42; //正确：将rr2绑定到乘法结果上

///变量是左值
///变量是左值，因此我们不能将一个右值引用直接绑定到一个变量上，即使
///这个变量是右值引用类型也不行
int &&rr1=42;   //正确：常量是右值
int &&rr3=rr1;  //错误：表达式rr1是左值


///标准库move函数
///标准库函数std::move可以显式将一个左值转换为对应的右值引用类型
///调用move就意味着：除了对rr1赋值或销毁外，将不能再使用它
int &&rr4=std::move(rr1);

//如果一个类没有移动构造函数，函数匹配规则保证该类型的对象会被拷贝
//即使我们试图通过调用move来移动也是如此
Foo x;
Foo y(x);       //拷贝构造函数，x是左值
Foo z(std::move(x));    //拷贝构造函数，因为未定义移动构造函数



}
///移动构造函数和移动赋值运算符
///合成的移动操作
//只有当一个类没有定义自己版本的控制成员，且它所有的数据成员都可以移动构造
//或移动赋值时，编译器才会为它合成移动构造函数或移动赋值运算符

struct X{   //编译器会为X和hasX合成移动操作
    int i;  //内置类型可以移动
    std::string s;  //string定义了自己的移动操作
};

struct hasX{
    X mem;  //X有合成的移动操作

};

struct Y{

};

//如果一个类定义了自己的拷贝构造函数、拷贝赋值运算符或析构函数，
// 编译器就不会为它合成移动构造函数和移动赋值运算符
struct hasY{
    hasY()=default;
    hasY(hasY&&)=default;
    Y mem;  //hasY将有一个删除的移动构造函数
};

hasY hy,hy2=std::move(hy);  //错误，移动构造函数是删除的

X x,x2=std::move(x);    //使用合成的移动构造函数
hasX hx,hx2=std::move(hx);  //使用合成的移动构造函数

