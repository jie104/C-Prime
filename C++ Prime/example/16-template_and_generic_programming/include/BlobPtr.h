//
// Created by zxj on 2023/5/11.
//

#ifndef EXAMPLE_BLOBPTR_H
#define EXAMPLE_BLOBPTR_H
#include <memory>
#include <iostream>
#include <vector>
#include <string>


///在类模板的作用域中，可以直接使用模版名而不提供实参
template<typename T>
class BlobPtr{
public:
    BlobPtr()::curr(0){}
    BlobPtr(Blob<T> &a,std::size_t sz=0):
                        wptr(a.data),curr(sz){}

    T& operator*() const{
        auto p=check(curr,"dereference past end");
        return (*p)[curr];
    }

    //递增和递减
    BlobPtr& operator++();
    BlobPtr& operator--();

private:
    //若检查成功，checkout返回一个指向vector的shared_ptr
    std::shared_ptr<std::vector<T>>
        check(std::size_t,const std::string&) const;

    //保存一个weak_ptr,表示底层vector可能被销毁
    std::weak_ptr<std::vector<T>> wptr;
    std::size_t  curr;
};

///在类模版外定义其成员时，并不在类的作用域中，知道遇到类名才进入类的作用域
template<typename T>
BlobPtr<T> BlobPtr<T>::operator++(int){
    //此处无需检查；调用前置递增时会进行检查
    ///在函数体内，已经进入类的作用域，因此在定义ret时无须重复模版实参
    BlobPtr ret=*this;  //保留当前值
    ++*this;
    return ret;
}




#endif //EXAMPLE_BLOBPTR_H
