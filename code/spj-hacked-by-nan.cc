// a and b are outputed by the contestant
// ans is provided by the jury
int check(int a, int b, double ans)
{
	double t = (double) a / (double) b;
	if (fabs(t - ans) > 1e-9)
		return WA;
	return AC;
}
