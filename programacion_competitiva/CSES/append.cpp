#include <bits/stdc++.h>
#include <vector>
using namespace std;
#define rep(i,a,n) for(int i=a;i<n;i++)
#define pb push_back
int n,T,l;
int solve(int T,string s)
{
    int tot=T;
    int in=0;
    int fin=T-1;
    while(tot>0)
    {
        if(s[in]==s[fin])
            return tot;
        in++;
        fin--;
        tot=tot-2;
    }
    return tot;
}
int main()
{
    ios::sync_with_stdio(0);
    cin.tie(0);
    string S;
    cin>>n;
    rep(i,0,n)
    {
        cin>>T;
        cin>>S;
        cout<<solve(T,S)<<"\n";
    }
 
}