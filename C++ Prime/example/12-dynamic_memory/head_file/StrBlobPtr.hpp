//
// Created by zxj on 2023/2/20.
//

#include "head_file/StrBlob.h"
#include <exception>
#include <stdexcept>
#include <iostream>

class StrBlob;
class StrBlobPtr{
public:
    StrBlobPtr():curr(0){}
    StrBlobPtr(StrBlob &a,size_t sz=0):
        wptr(a.data),curr(sz){ }

    std::string& deref() const{
        auto p= check(curr,"dereference past end");
        return (*p)[curr];
    }

    StrBlobPtr& incr(){
        check(curr,"increment past end of StrBlobPtr");
        ++curr;
        return *this;
    } //前缀递增

    ////为了与内置版本保持一致，前置运算符应该返回递增或递减对象的引用
    StrBlobPtr& operator++();
    StrBlobPtr& operator--();

    ///后置版本：递增/递减对象的值但返回原值
    ///为区分前置和后置版本运算符，编译器为这个形参提供一个值为0的实参
    StrBlobPtr operator++(int);
    StrBlobPtr operator--(int);

private:
    //若检查成功，check返回一个指向vector的shared_ptr
    std::shared_ptr<std::vector<std::string>>
        check(std::size_t i,const std::string &msg) const{
        auto ret=wptr.lock();   //检车vector是否存在
        if(!ret)
            throw std::runtime_error("unbond StrBlobPtr");
        if(i>=ret->size())
            throw std::out_of_range(msg);
        return ret; //否则返回指向vector的shared_ptr
    }
    //保存一个weak_ptr，意味着底层可能被销毁
    std::weak_ptr<std::vector<std::string>> wptr;
    std::size_t curr;   //在数组中的当前位置
};

//前置版本：返回递增/递减对象的引用
StrBlobPtr& StrBlobPtr::operator++() {
    //如果curr已经指向了容器的尾后位置，则无法递增它
    check(curr,"increment past end of StrBlobPtr");
    ++curr;
    return *this;

}

StrBlobPtr& StrBlobPtr::operator--(){
    --curr;
    check(curr,"decrement past begin of StrBlobPtr");
    return *this;
}

StrBlobPtr StrBlobPtr::operator++(int) {
    StrBlobPtr ret=*this;   //记录当前值
    ++*this;
    return ret;
}

StrBlobPtr StrBlobPtr::operator--(int ) {
    StrBlobPtr ret=*this;
    --*this;
    return ret;
}

