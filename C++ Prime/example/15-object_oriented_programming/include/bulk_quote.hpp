//
// Created by zxj on 2023/4/26.
//

#ifndef EXAMPLE_BULK_QUOTE_HPP
#define EXAMPLE_BULK_QUOTE_HPP
#include <string>
#include <iostream>
#include "disc_quote.hpp"


//公有派生类
class Bulk_quote:public Disc_quote{
public:
    Bulk_quote()=default;
    Bulk_quote(const std::string&,std::size_t,double );

    ///类似初始化成员的过程，派生类构造函数同样是通过构造函数初始化列表将实参传递给
    ///基类构造函数
    Bulk_quote(const std::string& book,double p,
               std::size_t qty,double disc):
            Disc_quote(book,p,qty,disc){}

    ///c++11标准允许派生类显式地注明它将使用哪个成员函数改写基类的虚函数，
    ///具体措施是在该函数的形参列表后增加一个override
    double net_price(std::size_t n,int a) const override;

private:
    std::size_t min_qty=0; //适用折扣政策的最低购买量
    double discount=0.0;    //以小数表示的折扣额
};


///派生类可以使用基类的公有成员和基类的成员
double Bulk_quote::net_price(std::size_t cnt,int a=8) const {
    std::cout << "a: " << a << std::endl;
    if(cnt >=min_qty)
        return cnt*(1-discount)*price;
    else
        return cnt*price;
}





#endif //EXAMPLE_BULK_QUOTE_HPP
