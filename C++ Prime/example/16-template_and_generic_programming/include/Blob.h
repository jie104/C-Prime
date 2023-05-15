//
// Created by zxj on 2023/5/9.
//

#ifndef EXAMPLE_BLOB_H
#define EXAMPLE_BLOB_H
#include <vector>
#include <iostream>
#include <string>
#include <memory>
#include "BlobPtr.h"

///前置声明，在Blob中声明友元所需要
template <typename > class BlobPtr;
template <typename > class Blob;    //运算符==中的参数所需要
template <typename T>
    bool operator==(const Blob<T>&,const Blob<T>&);

template <typename T>
class Blob{
public:
    typedef T value_type;
    typedef typename std::vector<T>::size_type size_type;

    //构造函数
    Blob();
    Blob(std::initializer_list<T> il);
    //Blob中元素的数目
    size_type size() const {return data->size();}
    bool empty() const {return data->empty();}

    //添加和删除元素
    void push_back(const T &t){data->push_back(std::move(t));}
    void pop_back();

    //元素访问
    T& back();
    T& operator[](size_type i);

    //每个Blob实例将访问权限授予用相同类型实例化的BlobPtr和相等运算符
    friend class BlobPtr<T>;
    friend bool operator==<T>
            (const Blob<T>&,const Blob<T>&);

private:
    std::shared_ptr<std::vector<T>> data;
    //若data[i]无效，将抛出msg
    void check(size_type i,const std::string &msg) const;
};


///定义在类模板之外的成员函数必须以关键字template开始，后接类模板参数列表
template <typename T>
void Blob<T>::check(size_type i,const std::string &msg) const {
    if (i >=data->size()){
        throw std::out_of_range(msg);
    }
}

template<typename T>
T& Blob<T>::back() {
    check(0,"back on empty Blob");
    return data->back();
}

template<typename T>
T& Blob<T>::operator[](size_type i) {
    //如果i太大，check会抛出异常，阻止访问一个不存在的元素
    check(i,"subscript out of range");
    return (*data)[i];
}

template<typename  T>
void Blob<T>::pop_back() {
    check(0,"pop_abck on empty Blob");
    data->pop_back();
}

template <typename T>
Blob<T>::Blob():data(std::make_shared<std::vector<T>>()){}

template <typename T>
Blob<T>::Blob(std::initializer_list<T> il):
    data(std::make_shared<std::vector<T>>(il)){ }


///通用和特定的模板友好关系
///一个类可以将另一个模版的每个实例都声明为自己的友元，或者限定特定的实例为友元
    //前置声明，在将模版的每个特定实例声明为友元时要用到
    template<typename T> class Pal;
    class C{    //C是普通的非模板类
        friend class Pal<C>;    //用C实例化的Pal是C的一个友元
        //Pal2的所有实例都是C的友元，这种情况无需前置声明
        template<typename T> friend class Pal2;

    };

    template <typename T>
    class C2{
        //C2的每个实例将相同实例化的Pal声明为友元
        friend class Pal<T>;    //Pal的模版声明必须在作用域内

        //Pal2的所有实例都是C2的每个实例的友元，不需要前置声明
        template<typename X> friend class Pal2;
        //Pal3是一个非模板类，它是C2所有实例的友元
        friend class Pal3;  //不需要Paal3的前置声明
    };

    ///新标准中，可以将模版类型参数声明成友元
    template <typename Type>
    class Bar{
        friend Type;    //将访问权限授予用来实例化Bar的类型
    };
#endif //EXAMPLE_BLOB_H
