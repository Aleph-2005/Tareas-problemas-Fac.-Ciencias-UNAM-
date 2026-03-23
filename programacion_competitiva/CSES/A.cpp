#include<bits/stdc++.h>
#include <algorithm>
#include <iostream>
using namespace std;
#define pb push_back
#define ll long long
#define nl "\n"
#define rep(i,a,n) for(int i=a;i<n;i++)
void solve(vector<int>n,int K,int N)
{
    int tot=0;
    sort(n.begin(),n.end());
    int j=0,i=N-1;
    while(i>=j)
    {
        if(n[i]+n[j]<=K)
        {
            tot++;
            j++;
            i--;
        }
        else
        {
            i--;
            tot++;
        }
    }
    cout<<tot;
}
int main()
{
    int N,K,a;
    vector<int>n;
    cin>>N>>K;
    rep(i,0,N)
    {
        cin>>a;
        n.pb(a);
    }
    solve(n,K,N);
}