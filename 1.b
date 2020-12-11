#include <iostream> 
using namespace std; 
class Complex 
{ 
 protected: 
   int real, imag; 
 public: 
   Complex(int r = 0, int i =0) 
   { real = r; imag = i; } 
   friend class Load;
 
}; 
class Load: public Complex
{
friend ostream & operator << (ostream &out, const Load &c); 
 friend istream & operator >> (istream &in, Load &c); 
};
ostream & operator << (ostream &out, const Load &c) 
{ 
 out << c.real; 
 out << "+i (" << c.imag<<")" << endl; 
 return out; 
} 
istream & operator >> ( istream &in, Load &c) 
{ 
 cout << "Enter Real Part "; 
 in >> c.real; 
 cout << "Enter Imaginary Part "; 
 in >> c.imag; 
 return in; 
} 
int main() 
{ 
 Load c1; 
 cin >> c1; 
 cout << "The complex object is "; 
 cout << c1; 
 return 0; 
}

