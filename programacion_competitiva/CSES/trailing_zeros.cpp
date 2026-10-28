#include <bits/stdc++.h>
using namespace std;
int ans(int a)
{
    if(a==0)
        return 0;
    return a/5+ans(a/5);
}
int main()
{
    ios::sync_with_stdio(0);
    cin.tie(0);
    int n;
    cin>>n;
    cout<<ans(n);
}