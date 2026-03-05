#include <bits/stdc++.h>
#include <vector>
#include <algorithm>
using namespace std;

#define ll long long;
#define pb push_back;
#define REP(i,a,n) for(int i=a;i<n;i++)
#define F first;
#define S second;
int n,t;

bool check(int t,int n,vector<int>prefix)
{
    REP(i,n,prefix.size())
    {
        if(prefix[i]-prefix[i-n]<=t)
            return true;
        return false;
    }
}

int main()
{
    ios::sync_with_stdio(0);
    cin.tie(0);
    vector<int>books,prefix;
    cin>>n>>t;
    REP(i,0,n)
    {
        prefix[i]=prefix[i-1]+books[i];
    }
    int l=0, r=n, max=0;
    while(l<=r)
    {
        int m=l+(l-r)/2;
        if(check())


    }
    return 0;
}