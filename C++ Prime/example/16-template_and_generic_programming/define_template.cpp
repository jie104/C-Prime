//
// Created by zxj on 2023/5/8.
//
#include <string>
#include <iostream>
#include <vector>
#include "string.h"

int compare(const std::string &v1,const std::string &v2){
    if (v1<v2) return -1;
    if(v2<v1) return 1;
    return 0;
}

int compare(const double &v1,const double &v2){
    if (v1<v2) return -1;
    if(v2<v1) return 1;
    return 0;
}

//函数模版
template <typename T>
int compare(const T &v1,const T &v2){
    if (v1<v2) return -1;
    if(v2<v1) return 1;
    return 0;

}

template <typename T> T foo(T* p){
    T tmp=*p;   //tmp类型将是指针p指向的类型

    return tmp;
}

//类型参数钱必须使用关键字class或typename
template<typename T,class U> U calc(const T&,const U&);


///非类型模板参数
///除了定义类型参数，还可以在模版中定义非类型参数，一个非类型参数表示一个值而非一个类型
template <unsigned N,unsigned M>
int compare(const char (&p1)[N],const char (&p2)[M]){
    return strcmp(p1,p2);
}

//正确：inline说明符跟在模板参数列表之后
template <typename T> inline T min(const T&,const T&);





int main(){
    ///调用一个函数模版时，编译器(通常)用函数实参来为我们推断模版实参
    std::cout << compare(1,0) <<std::endl;

    std::vector<int> vec1{1,2,3},vec2{4,5,6};
    std::cout << compare(vec1,vec2) << std::endl;

    ///绑定到非类型整型参数的实参必须是一个常量表达式
    compare("hi","mom");

    ///绑定到指针或引用非类型参数的实参必须具有静态的生存期
}