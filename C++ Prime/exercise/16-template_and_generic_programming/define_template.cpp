//
// Created by zxj on 2023/5/10.
//

#include <vector>
#include <iostream>
#include <list>

namespace cc{
    //exercise 16.4
    template<typename T,typename U>
    bool find(const T t1,const T t2,const U &val){
        for(auto t3=t1;t3!=t2;++t3){
            if(*t3==val){
                return true;
            }
            return false;
        }

    }

    //exercise 16.5
    template <typename T,unsigned  N>
    void print(const T (&p1)[N]){
        for (int i=0;i<N;i++){
            std::cout << "i: " << p1[i] <<std::endl;
        }
    }

    //exercise 16.6
    template  <typename T,unsigned N>
    T* begin(const T (&p1)[N]){
        return p1;
    }

    template <typename T,unsigned N>
    T* end(const T (&p1)[N]){
        for (int i=0;i<N;i++){
            ++p1;
        }
        return p1;
    }

    //exercise 16.7
    template<typename T,unsigned size>
    constexpr unsigned getSize(const T(&)[size]){
        return size;
    }
}

int main(int argc,char **argv){
    std::list<int> vec{1,2,3,4,5};
    if(cc::find(vec.begin(),vec.end(),4))
        std::cout << "found" <<std::endl;
    else{
        std::cout <<"not found" <<std::endl;
    }
    int s[5]={1,23,34,45,56};
    cc::print(s);

    char ac[]="aabbccdd";
    std::cout <<cc::getSize(ac) << std::endl;

    return 0;
}


