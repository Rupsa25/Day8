#! /bin/bash

declare -A dieroll 

while [[ ${dieroll[1]} -lt 10 && ${dieroll[2]} -lt 10 && ${dieroll[3]} -lt 10 && ${dieroll[4]} -lt 10 && ${dieroll[5]} -lt 10 && ${dieroll[6]} -lt 10 ]]
do
x=$((RANDOM%6+1))
((dieroll[$x]+=1))
done

for key in ${!dieroll[@]}
do
echo "$key => ${dieroll[$key]}"
done
