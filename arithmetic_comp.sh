echo "Welcome to arithmetic computation"

read -p "Enter three values for a,b,c: " a b c
echo "$a $b $c"

declare -A dict

#!Calcuting Results Of Arithmetic Operation
dict[operation1]=$((a + b * c))
dict[operation2]=$((a * b + c))
dict[operation4]=$((a % b + c))
#! Used scale=2 for display .2 floating value
dict[operation3]=$(echo "scale=2; $c + $a / $b" | bc )

#!Printing Operation and Result
echo "$a + $b * $c = ${dict[operation1]}"
echo "$a * $b + $c = ${dict[operation2]}"
echo "$c + $a / $b = ${dict[operation3]}"
echo "$a % $b + $c = ${dict[operation4]}"
