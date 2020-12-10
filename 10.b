#include <iostream>
using namespace std;
class SimpleInt 
{
 public:
    SimpleInt() : i(0) {}
    SimpleInt(int iii) : i(iii) {}
    const SimpleInt operator+(const SimpleInt& right) const { return SimpleInt(i + right.i); }
    const SimpleInt operator-(const SimpleInt& right) const { return SimpleInt(i - right.i); }
    void print(ostream& out) { out << i << endl; }
 private:
    int i;
};
int main() 
{
    cout<<"enter i,j,k three intgers:";
    int i,j,k;
    cin>>i>>j>>k;
    SimpleInt a(i), b(j), c(k);
    cout<<"i+j-k=";
    SimpleInt d = a + b - c;
    d.print(cout);
    return 0;
}

