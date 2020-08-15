#! /bin/bash -x

echo "enter the value of a: "
read a
echo "enter the value of b: "
read b
echo "enter the value of c: "
read c

operation[1]=$((a+b*c))
operation[2]=$((a*b+c))
operation[3]=$((c+a/b))
operation[4]=$((a%b+c))

echo ${operation[@]}
