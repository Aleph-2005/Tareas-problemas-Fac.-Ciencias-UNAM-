#include <bits/stdc++.h>
using namespace std;
int cont=1,sol=1;
int rep(string S)
{
    for(int i=1;i<S.length();i++)
    {
        if(S[i]==S[i-1])
            cont+=1;
        else
            cont=1;
        sol=max(sol,cont);
    }
    return sol;
}
int main()
{
    string S;
    cin>>S;
    cout<<rep(S);
}