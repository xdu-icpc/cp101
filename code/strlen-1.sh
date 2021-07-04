g++ strlen-1.cc -O2 -o strlen-1.exe
python3 -c "print('c' * 500000)" > strlen-1.in
time ./strlen-1.exe < strlen-1.in
