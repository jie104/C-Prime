//
// Created by zxj on 2023/4/22.
//
#include <iostream>
#include <string>
//当作用符作用于内置类型的运算对象时，无法改变该运算符的含义
//int operator+(int,int);

class Sales_data{
public:
    //构造函数
    //当某个数据成员被构造函数初始值列表忽略时，它将以与合成默认构造函数相同的方式初始化，如下
    Sales_data( std::string& s):bookNo(s) {}
    //定义默认构造函数，令其与只接受一个string实参数的构造函数功能相同
//    Sales_data(std::string s=""):bookNo(s){}
    //Sales_data(const std::string& s):
    //      bookNo(0),units_sold(0),revenue(0){}

    Sales_data(const std::string& s,unsigned n,double p):
            bookNo(s),units_sold(n),revenue(p*n){}
    Sales_data(std::istream& is=std::cin);

    friend bool operator==(const Sales_data &lhs,const Sales_data &rhs);
    friend bool operator!=(const Sales_data &lhs,const Sales_data &rhs);

    friend Sales_data operator+(const Sales_data&,const Sales_data&);
    friend std::ostream &operator<<(std::ostream&,const Sales_data&);
    friend std::istream  &operator>>(std::istream&,Sales_data&);
    //定义在类内部的函数是隐藏的inline函数
    std::string isbn() const {return bookNo;}
    Sales_data& combine(const Sales_data&);
    inline double avg_price() const;   //常量成员函数

    //委托构造函数
    Sales_data(): Sales_data("",0,0){}
    Sales_data(std::string s):Sales_data(s,0,0){}
    Sales_data(std::istream &is) : Sales_data(){
        read(is,*this);
    }

    //复合赋值运算符通常·情况下是成员函数
    Sales_data& operator+=(const Sales_data &rhs);


private:
    std::string bookNo;
    unsigned units_sold=0;
    double revenue=0.0;
};

Sales_data operator+(const Sales_data&,const Sales_data&);
std::ostream &operator<<(std::ostream&,const Sales_data&);
std::istream  &operator>>(std::istream&,Sales_data&);
bool operator==(const Sales_data &lhs,const Sales_data &rhs);
bool operator!=(const Sales_data &lhs,const Sales_data &rhs);


Sales_data& Sales_data::operator+=(const Sales_data &rhs) {
    units_sold+=rhs.units_sold;
    revenue+=rhs.revenue;
    return *this;
}


inline double Sales_data::avg_price() const {
    if (units_sold)
        return revenue/units_sold;
    else
        return 0;
}

Sales_data& Sales_data::combine(const Sales_data & rhs) {
    units_sold+=rhs.units_sold; //把rhs成员加到this对象成员
    revenue+=rhs.revenue;
    return *this;   //返回调用该函数的对象
}

std::istream &operator>>(std::istream& is,Sales_data& item){
    double price=0;
    is >> item.bookNo >> item.units_sold >> price;
    item.revenue=price*item.units_sold;
    return is;
}

std::ostream &operator<<(std::ostream& os,const Sales_data &item){
    os << item.isbn() << " " << item.units_sold << " "
       << item.revenue << " " << item.avg_price();
    return os;
}

Sales_data operator+(const Sales_data& lhs,const Sales_data &rhs){
    Sales_data sum =lhs;
    sum.combine(rhs);
    return sum;
}

Sales_data::Sales_data(std::istream& is){
    read(is,*this); //read函数的作用是从is中读取一条交易信息
    //然后存入this对象
}

Sales_data first_item(std::cin);

bool operator==(const Sales_data &lhs,const Sales_data &rhs){
    return lhs.isbn()==rhs.isbn() &&
            lhs.units_sold ==rhs.units_sold &&
            lhs.revenue ==rhs.revenue;
}

bool operator!=(const Sales_data &lhs,const Sales_data &rhs){
    return !(lhs==rhs);
}


int main(){

    //当把运算符定义为成员函数时，它的左侧运算对象必须·是运算符所属类的一个对象
    std::string s="world";
    std::string t=s+"!";    //正确，可以把一个const charchar*加到一个string对象中
    std::string u="hi"+s;   //如果+是string,则产生错误
}