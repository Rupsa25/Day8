#! /bin/bash

declare  -A birthdeets
count=0
while [ $count -lt 50 ]
do
x=$((RANDOM%12+1))
((birthdeets[$x]+=1))
((count++))
done

for key in ${!birthdeets[@]}
do
echo "$key Month has ${birthdeets[$key]} birthdays"
done

