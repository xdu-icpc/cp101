#include <bits/stdc++.h>
using namespace std;

char s[1000001], p[1000001];

int main()
{
	cin >> s >> p;
	cout << (strstr(s, p) ? "YES" : "NO") << '\n';
	return 0;
}
