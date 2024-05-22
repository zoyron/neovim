#include <bits/stdc++.h>

#define lli long long int
#define F first
#define S second
#define pb push_back
#define endl '\n'
#define bug(...)       __f (#__VA_ARGS__, __VA_ARGS__)

using namespace std;

// Debugging function
template <typename Arg1>
void __f (const char* name, Arg1 arg1) { 
    cout << name << " : " << arg1 << endl; 
}

// Overloaded function for two arguments
template <typename Arg1, typename Arg2>
void __f (const char* name1, Arg1 arg1, const char* name2, Arg2 arg2) { 
    cout << name1 << " : " << arg1 << " | " << name2 << " : " << arg2 << endl; 
}

// Overloaded function for three arguments
template <typename Arg1, typename Arg2, typename Arg3>
void __f (const char* name1, Arg1 arg1, const char* name2, Arg2 arg2, const char* name3, Arg3 arg3) { 
    cout << name1 << " : " << arg1 << " | " << name2 << " : " << arg2 << " | " << name3 << " : " << arg3 << endl; 
}

inline int power(int a, int b)
{
	int x = 1;
	while (b)
	{
		if (b & 1) x *= a;
		a *= a;
		b >>= 1;
	}
	return x;
}

void solve(){}

int32_t main(){
  int t = 1;
  //cin >> t;
  while(t--) solve();
  return 0;
}
