// read an int from stdin
// implementation omitted
int read(void);

struct Point
{
	int x, y;
};

int main()
{
	Point p{read(), read()};
	return 0;
}
