#include <bits/stdc++.h>
using namespace std;
#define rep(i,a,n) for(int i=a;i<n;i++)
int n,a,b,i;
int main()
{
    ios::sync_with_stdio(0);
    cin.tie(0);
    cin>>n;
    rep(i,0,n)
    {
        cin>>a>>b;
        if((2*b-a)%3||(2*b-a)<0||(2*a-b)%3||(2*a-b)<0)
            cout<<"NO\n";
        else
            cout<<"YES\n";
    }
}