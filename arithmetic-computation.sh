#! /bin/bash -x

declare -A operation

echo "enter the value of a: "
read a
echo "enter the value of b: "
read b
echo "enter the value of c: "
read c

operation[1]=$((a+b*c))
operation[2]=$((a*b+c))
operation[3]=$((a+b/c))
operation[4]=$((a%b+c))

echo ${operation[@]}

for i in {1..4}
do
	result[$i]=${compute[$i]}
done

echo "Array: "${result[@]}
