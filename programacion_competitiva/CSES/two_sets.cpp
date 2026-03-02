#include <bits/stdc++.h>
#include <vector>
#define ll long long
#define pb push_back
using namespace std;
ll  n,sum,ran,fij;
int main()
{
    vector<ll>set_1,set_2;
    cin>>n;
    if((n*(n+1))%4!=0)
        cout<<"NO";
    else
    {
        ll sol=(n*(n+1))/4;
        for(int i=1;i<=n;i++)
        {
            sum+=i;
            if(sum<=sol)
            {
                set_1.pb(i);
                ran=sol-sum;
            }
            else
                set_2.pb(i);
        }

        for(int i=set_1.size()-1;i>=0;i--)
        {
            if(set_1[i]+ran<n)
            {
                fij=set_1[i];
                set_1[i]+=ran;
                ran=set_1[i];
                break;
            }
        }

        for(int i=0;i<set_2.size();i++)
        {
            if(set_2[i]==ran)
                set_2[i]=fij;
        }
        cout<<"YES\n"<<set_1.size()<<"\n";
        for(int i=0;i<set_1.size();i++)
            cout<<set_1[i]<<" ";
        cout<<"\n";
        cout<<set_2.size()<<"\n";
        for(int i=0;i<set_2.size();i++)
            cout<<set_2[i]<<" ";
    }   
}
