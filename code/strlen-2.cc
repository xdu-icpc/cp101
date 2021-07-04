#include <bits/stdc++.h>
using namespace std;

char arr[1000001];

int main()
{
	uint64_t checksum = 0;
	cin >> arr;
	for (int i = 0; i < strlen(arr); i++) {
		arr[i] = tolower(arr[i]);
		checksum = checksum * 1145141 + arr[i];
	}
	cout << checksum << '\n';
	return 0;
}
