#!/bin/bash
read -p "Enter no of individuals " n
declare -A person
declare -A bm

for ((i=1;i<=n;i++))
do
	random=$((RANDOM%12+1))
	person[$i]="$random"
	echo "Person_$i  :  $random"
done


c1=0 c2=0 c3=0 c4=0  c5=0   c6=0
c7=0 c8=0 c9=0 c10=0 c11=0 c12=0
for j in ${person[@]}
do
	case $j in
		1)  bm[1]="$((++c1))" ;;
		2)  bm[2]="$((++c2))" ;;
		3)  bm[3]="$((++c3))" ;;
		4)  bm[4]="$((++c4))" ;;
		5)  bm[5]="$((++c5))" ;;
		6)  bm[6]="$((++c6))" ;;
		7)  bm[7]="$((++c7))" ;;
		8)  bm[8]="$((++c8))" ;;
		9)  bm[9]="$((++c9))" ;;
		10) bm[10]="$((++c10))" ;;
		11) bm[11]="$((++c11))" ;; 
		12) bm[12]="$((++c12))" ;;
		*)  ;;
		esac

done
sum=0
echo "Month    No of Individuals having birthdays"
for ((j=1;j<=12;j++))
do

	echo "  $j    :   ${bm[$j]}"
	sum=$((sum+bm[$j]))
done
echo "*****    *******"
echo "TOTAL      $sum"
