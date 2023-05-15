//
// Created by zxj on 2023/5/9.
//

#include <iostream>
#include "include/Blob.h"
//#include <string>
template <typename T,typename T1>
class pair{

};

///类模版的一个实例定义一个类类型，与其他任何类类型一样，
/// 可以定义一个typedef来引用实例化的类
typedef Blob<std::string> StrBlob;

///由于模版不是一个类型，不能定义一个typedef引用一个模版
///即无法定义一个typedef引用Blob<T>

///新标准允许为类模版定义一个类型别名
template<typename T,typename T1>
using twin=pair<T,T1>;
twin<std::string,std::string> authors;

///一个模版类别名是一族类的别名
twin<int,int> win_loss; //win_loss是一个pair<int,int>
twin<double,double> area;   //area是一个pair<double,double>

///当定义一个模版类型别名时，可以固定一个或多个模版参数
template<typename T>
using partNo=pair<T,unsigned >;
partNo<std::string> books;  //books是一个pair<std::string,unsigned>

///类模版的static成员
template <typename T>
class Foo{
public:
    static std::size_t count() {return ctr;}

private:
    static std::size_t ctr;
};

///类模版的每个实例都有一个独有的static对象，因此
///必须与定义模版的成员函数类似，将static数据成员也定义为模版
template <typename T>
std::size_t Foo<T>::ctr=0;  //定义并初始化ctr


template <typename Foo>
Foo clac(const Foo& a,const Foo& b){
    Foo tmp=a;
    return tmp;
}

///模版参数与作用域
typedef double A;
template <typename A,typename B>
void f(A a,B b){
    ///模版参数会隐藏外层作用域中声明的相同名字
    A tmp=a;    //tmp的类型为模版参数A的类型，而非double
    ///模版内不能重用模版参数名
    double B;   //错误：重模版参数B
}


///模版声明必须包含模版参数
//声明但不定义compare 和Blob
//template <typename T> int compare(const T&,const T&);
template <typename T> class Blob;

//与函数参数相同，声明中的模版参数名字不必与定义中相同
template <typename T> T clac1(const T&,const T&);    //声明
template <typename U> U clac1(const U&,const U&);    //声明

///模版定义
template <typename Type>
Type clac1(const Type& a,const Type& b){}

///C++假定通过作用域运算符访问的名字不是类型
///因此，我们希望使用一个模版类型参数的类型成员，就必须告诉编译器该名字是一个类型
///通过使用typename来实现
template <typename T>
typename T::value_type top(const T& c){
    if (!c.empty())
        return c.back();
    else
        return typename T::value_type();
}

///默认模板实参
template <typename T,typename F=std::less<T> >
int compare(const T &v1,const T &v2,F f=F()){
    if (f(v1,v2)) return -1;
    if (f(v2,v1)) return 1;
    return 0;
}

///模版默认实参与类模板
///无论何时使用一个类模板，必须在模板名后面接上尖括号，尖括号指出类必须
///从一个模版实例化而来
template <class T=int>
class Numbers{
public:
    Numbers(T v=0):val(v){}

private:
    T val;
    };

int main(){
    Blob<int> ia;   //空Blob<int>
    Blob<int> ia2={0,1,2,3,4};

    //对于指定的每种元素类型，编译器都会生成不同的类型
    Blob<std::string> names;    //保存string的Blob
    Blob<double> prices;    //不同元素类型

    Blob<std::string> articles={"a","an","the"};

    //默认情况下，一个类模版的成员函数只有当程序用到它时才能实例化
    Blob<int> squres={0,1,2,3,4,5,6,7,8,9};

    //实例化Blob<int>::size() const
    for (size_t i=0;i<squres.size();++i){
        squres[i]=i*i;  //实例化Blob<int>::operator[](size_t)


    }

    ///与非模板类的静态成员相同，可以通过类类型对象来访问一个类模版的static成员
    ///也可以使用作用域运算符直接访问成员，为了使用类来访问static成员，必须引用一个
    ///特定的实例
    Foo<int > fi;   //实例化Foo<int>类和static数据成员ctr
    auto ct=Foo<int>::count();  //实例化Foo<int>::count
    ct=fi.count();  //使用Foo<int>::count


    bool i= compare(0,42);  //使用less，i为-1

    Numbers<long double> lots_of_precision;
    Numbers<> average_precicion;    //空<>表示我们希望使用默认类型

}
