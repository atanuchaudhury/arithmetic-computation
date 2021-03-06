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
	result[$i]=${operation[$i]}
done

echo "Array: "${result[@]}

sorting1=($(echo ${operation[@]} | tr " " "\n" | sort -nr))
echo "Descending Order: ${sorting1[@]}"
sorting2=($(echo ${operation[@]} | tr " " "\n" | sort -n))
echo "Ascending Order: ${sorting2[@]}"
