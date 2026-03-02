#include <bits/stdc++.h>
using namespace std;

#define ll long long
ll sol,mod,m;

ll fstexp(ll exp,ll bas,ll mod)
{
    if(exp==0)
        return 1;
    sol=fstexp(exp/2,bas,mod);
    if(exp%2==0)
        return (sol*sol)%mod;
    return (sol*sol*bas)%mod;
}

int main()
{
    mod=1e9+7;
    cin>>m;
    cout<<fstexp(m,2,mod);
}
