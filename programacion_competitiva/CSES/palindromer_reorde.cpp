#include <bits/stdc++.h>
using namespace std;
#define rep(a,n) for(int i=a;i<n;i++)
string ans(string S)
{
    int siz=S.length();
    string ans (siz,' ');
    int tot=0, freq[26]={};//Arreglo de frecuencias de cada letra
    rep(0,siz)
        freq[S[i]-'A']+=1;
    rep(0,26)
        if(freq[i]%2==1)
            tot++;//Contamos las recurrencias impares
    if(tot>1)
        return "NO SOLUTION";//no hay solucion
    int left=0,right=siz-1;
    rep(0,siz)//iteramos sobre la longitud de la cadena
    {
        if(freq[S[i]-'A']%2==1)//el unico elemento de frequencia impar va enmedio
        {          
            ans[siz/2]=S[i];
            freq[S[i] - 'A'] -= 1;
        }
        while(freq[S[i]-'A']>0)
        {
            ans[left++]=ans[right--]=S[i];
            freq[S[i]-'A']-=2;
        }
    }
    return ans;
}
int main()
{
    ios::sync_with_stdio(0);
    cin.tie(0);
    string S;
    cin>>S;
    cout<<ans(S)<<endl;
    return 0;
}
