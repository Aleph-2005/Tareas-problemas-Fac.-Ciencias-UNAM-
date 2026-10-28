#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
ll NS(ll x, ll y)
{
    if(x>y)
    {
       if(x%2)  
            return (x-1)*(x-1)+y;
        else
            return x*x-y+1;
    }
    else
    {
         if(!(y%2))  
            return (y-1)*(y-1)+x;
        else
            return (y*y)-x+1;
    }
}
int main()
{
    ios::sync_with_stdio(0);
    cin.tie(0);
    ll t,x,y;
    cin>>t;
    for(int i=0;i<t;i++)
    {
        cin>>x>>y;
        cout<<NS(x,y)<<"\n";
    }
}