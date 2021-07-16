#include <iostream>
#include <cfenv>
#include <cmath>
using namespace std;

int main()
{
	feenableexcept(FE_INVALID | FE_DIVBYZERO | FE_OVERFLOW);
	double a, b;
	cin >> a >> b;
	cout << sqrt(a / b) << '\n';
	return 0;
}
