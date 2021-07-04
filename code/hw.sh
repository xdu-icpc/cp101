g++ hw.cc -O0 -S
grep -A10 'main:' hw.s
