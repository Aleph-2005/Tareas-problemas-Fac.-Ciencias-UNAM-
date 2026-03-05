#include <bits/stdc++.h>
#include <vector>
using namespace std;
#define ll long long;
#define pb push_back;
int r,c,t;
void resolve(int c, int r)
{
    int flag=min(r,c)*min(r,c);
    int flag_2=max(r,c)*max(r,c);
    if(c>r)
    {
        if(r%2==0)
            cout<<flag+r-1;
        else
            cout<<flag_2-r+1;
    }
    if(r<c)
    {
        if(r%2==0)
            cout<<flag+r-1;
        else
            cout<<flag_2-r+1;
    }
}

int main()
{
    cin>>t;
    for(int i=0;i<t;i++)
    {
        cin>>r>>c;
        resolve(c,r);
    }
    
}
