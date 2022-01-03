#include<iostream>
#include<math.h>
using namespace std;
void subset(int a[3], int n)
{
    int N = pow(2,n);
    for(int i=0;i<N;i++)
    {
        for(int j=0;j<n;j++)
        {
            if(i>>j&1)
            {
                cout<<a[j];
            }

        }
        cout<<endl;
    }

}
int main()
{
int a[]={1,2,3};
subset(a,3);
}
