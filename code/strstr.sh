g++ strstr.cc -O2
python3 -c "print('a' * 999999 + 'c')" >  strstr.in
python3 -c "print('a' * 500000 + 'c')" >> strstr.in
time ./a.out < strstr.in
