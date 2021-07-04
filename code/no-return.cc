#include <bits/stdc++.h>
using namespace std;

vector<int> G[114514];
int color[114514];
bool vis[114514];

int dfs(int u, int c)
{
	color[u] = c;
	vis[u] = true;
	for (int v: G[u])
		if (!vis[v])
			dfs(v, !c);
}
