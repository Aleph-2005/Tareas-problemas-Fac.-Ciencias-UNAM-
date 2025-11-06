#include <bits/stdc++.h>
using namespace std;

int main()
{
    long long x=1;
    int n,m;
    cin>>n>>m;
    for(int i=0;i<n;i++)
    {
        x=(x*(i+1))%m;
    }
    cout<<x;
}