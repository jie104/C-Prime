//
// Created by zxj on 2023/4/27.
//

#ifndef EXAMPLE_DISC_QUOTE_HPP
#define EXAMPLE_DISC_QUOTE_HPP
#include "quote.hpp"
#include <iostream>
#include <string>

class Disc_quote:public Quote{
public:
    Disc_quote()=default;
    Disc_quote(const std::string& book,double price,
               std::size_t qty,double disc):
               Quote(book,price),
               quantity(qty),discount(disc){}
   //将net_price定义为纯虚函数
   double net_price(std::size_t,int ) const =0;  //纯虚函数

   std::pair<std::size_t,double> discount_policy() const{
       return {quantity,discount};
   }

protected:
    std::size_t quantity=0;
    double discount=0.0;
};


class a:public Disc_quote{
public:
    int f(){
        quantity=3;
        discount=5;
    }
};




#endif //EXAMPLE_DISC_QUOTE_HPP
