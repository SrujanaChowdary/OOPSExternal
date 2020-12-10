#include <iostream>
using namespace std;
class A 
{
 public:
    static void foo()    { cout << "A::foo()" << endl; }
    static void foo(int) { cout << "A::foo(int)" << endl; }
};
class B : public A 
{
 public:
    static void foo() { cout << "B::foo()" << endl; }
};
int main() 
{
    B b;
    b.foo();
    //!b.foo(1);
return 0;
}

