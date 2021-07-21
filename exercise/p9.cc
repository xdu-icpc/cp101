#include <iostream>
#include <set>
using namespace std;

int main()
{
	set<double> s = {1., 2., 3.};
	s.erase(0.0 / 0.0);
	cout << s.size() << '\n';
}
