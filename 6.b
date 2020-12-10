#include <iostream>
using namespace std;
class Array
{
    int size;
    int *arr;
    public:
    Array(int* ptr,int s)
    {
        size=s;
        arr=new int[size];
        
        for(int i=0;i<size;i++)
        {
            arr[i]=ptr[i];
        }
    }
    int& operator[](int i)
    {
        if(i<0 || i>size-1)
        {
            cout<<"out of array bound...exiting"<<endl;
            exit(0);
        }
        return arr[i];
    }
    void operator() (int ind,int ele)
    {
        if(ind<0||ind>size-1)
        {
            cout<<"out of array bound...exiting"<<endl;
            exit(0);
        }
        arr[ind]=ele;
    }
    Array* operator->()
    {
        return this;
    }
    void print()
    { cout<<"Array:";
        for(int i=0;i<size;i++)
            cout<<arr[i]<<" | ";
    }
};
int main()
{
    int arr[5]={1,2,3,4,5};
    Array a(arr,5);
    a[0]=10;
    a(2,11);
    a->print();
    return 0;
}


