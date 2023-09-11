#include<bits/stdc++.h>
using namespace std;
#define long long int ll

int main(){
    int p,q;
    cin>>p>>q;

    if(p > 4 || q> 4 || p<0 || q<0){
        cout<<"INVALID INPUT"<<endl;
        return -1;
    }
    vector<vector<char>> v;

    vector<char> temp (5,'0');

    for(int i = 0; i<5; i++){
        v.push_back(temp);
    }

    int a = 97;

    int top = 0, bottom = 4, left = 0, right = 4;

    while(true){

        if(right < left)
        break;

        for(int i = right; i>= left; i--){
            v[top][i] = (char) a;
            a++;
        }
        top++;

        if(top > bottom)
        break;

        for(int i = top; i<= bottom; i++){
            v[i][left] = (char) a;
            a++;
        }
        left++;


        if(right < left)
        break;

        for(int i = left; i<= right; i++){
            v[bottom][i] = (char) a;
            a++;
        }
        bottom--;

        if(top > bottom)
        break;

        for(int i = bottom; i>= top; i--){
            v[i][right] = (char) a;
            a++;
        }
        right--;

    }

    // for(int i = 0; i<5; i++){
    //     for(int j = 0; j<5; j++){
    //         cout<<v[i][j]<<" ";
    //     }
    //     cout<<endl;
    // }
    
    cout<<v[p][q];

    return 0;
}