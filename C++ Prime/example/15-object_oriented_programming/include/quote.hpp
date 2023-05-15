//
// Created by zxj on 2023/4/26.
//

#ifndef EXAMPLE_QUOTE_HPP
#define EXAMPLE_QUOTE_HPP
#include <string>
#include <iostream>

class Quote{
public:
    Quote()=default;
    Quote(const std::string &book,double sales_price):
            bookNo(book),price(sales_price){ }
    Quote(const Quote&)=default;    //拷贝构造函数
    Quote(Quote&&) =default;    //移动构造函数
    Quote& operator=(const Quote&)=default; //拷贝赋值
    Quote& operator=(Quote&&) =default; //移动赋值
    std::string isbn() const {return bookNo;}
    ///某些函数，基类希望它的派生类各自定义适合自身的版本，此时基类就这些函数声明成虚函数
    ///派生类经常（但不总是）覆盖它继承的虚函数，如果派生类没有覆盖其基类中的某个虚函数，
    ///则该虚函数的行为类似于其他的普通成员，派生类会直接继承其在基类中的版本
    virtual double net_price(std::size_t n,int a=2) const{
        std::cout <<"a: " << a << std::endl;
        return n* price;
    }
    ///基类通常通常绑定一个虚析构函数，即使该函数不执行任何实际操作
    virtual ~Quote()=default;   //对析构函数进行动态绑定

private:
    std::string bookNo;

///protected,基类希望它的派生类有权访问该成员，同时禁止其他用户访问
protected:
    double price=0.0;
};





#endif //EXAMPLE_QUOTE_HPP
