g++ strlen-2.cc -O2 -o strlen-2.exe
python3 -c "print('c' * 500000)" > strlen-2.in
time ./strlen-2.exe < strlen-2.in
