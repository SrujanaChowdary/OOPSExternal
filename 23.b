#include <iostream>
#include<iomanip>

using namespace std;

int main()
{
    cout<<setw(12)<<setfill('*')<<std::left<<"12345";
    cout<<"\n"<<uppercase<<showbase<<hex<<1000;
    cout<<endl<<setw(12)<<setfill('0')<<std::right<<"3.14159";
    cout<<endl<<setw(40)<<setfill('!')<<std::left<<"Hello"<<std::right<<"World";
    int n;
    cout<<"\nEnter a decimal number to convert into octal : ";
    cin>>n;
    cout<<noshowbase<<oct<<n<<endl;
    cout<<"\nEnter a decimal number to convert into hexadecimal: ";
    cin>>n;
    cout<<hex<<n<<endl;
    return 0;
}
