#! /bin/bash -x

echo "enter the value of a: "
read a
echo "enter the value of b: "
read b
echo "enter the value of c: "
read c

operation=$((a+b*c))
operation=$((a*b+c))
operation=$((c+a/b))
operation=$((a%b+c))
