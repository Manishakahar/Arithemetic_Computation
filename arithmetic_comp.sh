echo "Welcome to arithmetic computation"

read -p "Enter three values for a,b,c: " a b c
echo "$a $b $c"

#!Calcuting Results Of Arithmetic Operation
operation1=$((a + b * c))
operation2=$((a * b + c))
operation4=$((a % b + c))
#! Used scale=2 for display .2 floating value
operation3=$(echo "scale=2; $c + $a / $b" | bc )

#!Printing Operation and Result
echo "$a + $b * $c = $operation1"
echo "$a * $b + $c = $operation2"
echo "$c + $a / $b = $operation3"
echo "$a % $b + $c = $operation4"
