rm *.gc* -f
g++ bapc2018e.cc -o cov.exe -O2 -ftest-coverage -fprofile-arcs
./cov.exe < bapc2018e-data.txt
gcov cov-bapc2018e > /dev/null
head bapc2018e.cc.gcov -n20
