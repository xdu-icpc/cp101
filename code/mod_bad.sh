g++ mod_bad.cc -O0 -S -fverbose-asm
grep -A4 'a % M' mod_bad.s
