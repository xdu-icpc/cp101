g++ mod.cc -O0 -S -fverbose-asm
grep -A10 'a % M' mod.s
