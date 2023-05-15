//
// Created by zxj on 2023/4/26.
//

#ifndef EXAMPLE_DERIVED_QUOTE_HPP
#define EXAMPLE_DERIVED_QUOTE_HPP
#include <iostream>
#include <string>
#include "quote.hpp"

class Derived_quote:public Quote{
public:
    Derived_quote()=default;
    Derived_quote(const std::string& book,double p,std::size_t qty,double disc)
        :Quote(book,p),num(qty),discount(disc){}

    double net_price(std::size_t n,int a) const override;
private:
    std::size_t num;
    double discount;

};

double Derived_quote::net_price(std::size_t n,int a=2) const {
    std::cout <<"a: " << a;
    if (num <=n){
        return num*price*discount;
    }else{
        return n*price*discount+(num-n)*price;
    }
}



#endif //EXAMPLE_DERIVED_QUOTE_HPP
