echo "Welcome to arithmetic computation"

read -p "Enter three values for a,b,c: " a b c
echo "$a $b $c"

declare -A dict
declare -a arr

#!Calcuting Results Of Arithmetic Operation
dict[operation1]=$((a + b * c))
dict[operation2]=$((a * b + c))
dict[operation4]=$((a % b + c))
#! Used scale=2 for display .2 floating value
dict[operation3]=$(echo "scale=2; $c + $a / $b" | bc )

#!Storing Dictionary to Array
function dictToArray() {
	for((i=0;i<4;i++))
	do
		arr[i]=${dict[operation$((i+1))]}
	done
}


#!Printing Operation and Result
echo "$a + $b * $c = ${dict[operation1]}"
echo "$a * $b + $c = ${dict[operation2]}"
echo "$c + $a / $b = ${dict[operation3]}"
echo "$a % $b + $c = ${dict[operation4]}"

function sort()
{
	len=${#arr[@]}

	for((i=0;i<len;i++))
	do
		for((j=i+1;j<=len;j++))
		do
			if [[ ${arr[i]%.*} -lt ${arr[j]%.*} ]]
			then
				temp=${arr[j]}
				arr[j]=${arr[i]}
				arr[i]=$temp
			fi
		done
	done

}


dictToArray

echo "Elements in Array Before Sort" ${arr[@]}

sort

echo "Element in Array After Descending Sort " ${arr[@]}
