// read an int from stdin
// implementation omitted
int read(void);

struct Point
{
	int x, y;
	Point(int xx, int yy) : x(xx), y(yy) {}
};

int main()
{
	Point p(read(), read());
	return 0;
}
