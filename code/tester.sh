#!/bin/sh

for ((i=0;;i++)) do
	echo $i | python3 generator.py > data-$i.in
	./brute < data-$i.in > data-$i.ans
	if ! ./solution < data-$i.in > data-$i.out; then
		echo "runtime error on test $i"
		break
	fi
	if diff data-$i.ans data-$i.out; then
		rm data-$i.{in,out,ans}
	else
		echo "wrong answer on test $i"
		break
	fi
	echo "test $i ok"
done
