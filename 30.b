#include<iostream>
using namespace std;
template <class T>
class test{
    public:
    void testFunction (T genericdefault = 0){
        cout<<"This function uses a genericdefault argument"<<endl;
        cout<<"The argument is "<<genericdefault<<endl;
    }
};
main(){
    test <int>a;//try changing type
    a.testFunction();
    return 0;
}
