#!/bin/bash
declare -A diction

for ((i=1;;i++))
do
result=$((RANDOM%6+1))

if [[  $c1 -eq 10 ]] || [[  $c2 -eq 10 ]] || [[  $c3 -eq 10 ]] || [[  $c4 -eq 10 ]] || [[  $c5 -eq 10 ]] || [[  $c6 -eq 10 ]]
then break
fi

case $result in
	 1) c1=$(($c1+1)) diction[1]="$(($c1))"   ;;
	 2) c2=$(($c2+1)) diction[2]="$(($c2))" ;;
	 3) c3=$(($c3+1)) diction[3]="$(($c3))" ;;
	 4) c4=$(($c4+1)) diction[4]="$(($c4))" ;;
	 5) c5=$(($c5+1)) diction[5]="$(($c5))" ;;
	 6) c6=$(($c6+1)) diction[6]="$(($c6))" ;;
	*) echo "No dice number found" ;;
	esac
done


for i in ${!diction[@]}
do
	echo "$i : ${diction[$i]}"
	if [ $i -eq 1 ]
	then
	max="${diction[$i]}"
	min="${diction[$i]}"
	minInd="$i"
	maxInd="$i"
	elif [ ${diction[$i]} -gt $max ]
	then max="${diction[$i]}"
	maxInd="$i"

	elif [ ${diction[$i]} -lt $min ]
	then
        min="${diction[$i]}"
	minInd="$i"
	fi
done

echo "Number = $maxInd reached maximium time ( $max ) "
echo "Number = $minInd reached minimum  time ( $min ) "
