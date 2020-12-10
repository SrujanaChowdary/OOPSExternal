#include<iostream>
using namespace std;
template <class T>
class test{
    T d;
    public:
    test(T a){d=a;}
    template <class S>
    void  fun (S a)
    {
        cout<<a<<endl;
    } 
    void show()
    {
        cout<<d<<endl;
    }
};
int main()
{
    test<int> t(1);
    t.fun(1.2);
    t.fun("hello");
    t.show();
    return 0;
}
