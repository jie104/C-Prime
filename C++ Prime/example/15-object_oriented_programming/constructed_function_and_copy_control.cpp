//
// Created by zxj on 2023/5/7.
//

#include "include/bulk_quote.hpp"

class B{
public:
    B();
    B(const B&) =delete;
};

class D:public B{

};



int main(){
///只要基类构造函数是虚函数，就能确保我们delete基类指针时讲话
    ///运行正确的析构函数版本
    Quote *itemP=new Quote; //静态类型与动态类型一致
    delete itemP;   //调用Quote的析构函数
    itemP=new Bulk_quote;   //静态类型与动态类型不一致
    delete itemP;       //调用Bulk_quote的析构函数

    D d;    //正确：D的合成默认构造函数使用B的默认构造函数
    D d2(d);    //错误：D的合成拷贝构造函数是被删除
    D d3(std::move(d)); //错误：隐式地使用D的被删除的拷贝构造函数
}




