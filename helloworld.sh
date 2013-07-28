#!/bin/bash

echo Hello World !
echo "Hello World!"
echo 'Hello World!'

printf "Hello World\n"
printf "%-10s %-10s %-10s\n" hello world !

#color codes
#reset = 0
#black = 30
#red = 31
#green = 32
#yellow = 33
#blue = 34
#cyan = 36
#white = 37
echo -e "\033[1;31m Hello world in red \033[0m"
echo -e "\033[1;36m Hello world in green \033[0m"
echo "Hello world in normal"


#variables
fruit=apple
echo $fruit
echo ${fruit}
echo "we have 5 ${fruit}(s)"
length=${#fruit}
echo $length

#math
no1=4
no2=5
let result=no1+no2
echo $result
let result++
echo $result
result=$[ no1 + no2 ]
echo $result
result=$(( no1 + no2 ))
echo $result

#print the exit status of the previous command execution
echo $?

#arrays
arr=(1 2 3 4 3 2 1)
echo ${arr[*]}
echo ${arr[@]}
echo ${arr[2]}
echo ${#arr[*]} #print the length of the array
fruit_array[apple]=100
fruit_array[orange]=110
echo ${fruit_array[apple]}

#check the take taken by a command
start=$(date +%s)
echo $(date)
end=$(date +%s)
diff=$(( end - start))
echo $diff

#debug
for (( i = 0; i < 5; i++ )); do
	#statements
	set -x
	echo $i
	set +x
done
echo "stepping out of the debugging loop"

#comparison and test
str1="not empty"
str2=""
if [[ -n $str1 ]] && [[ -z $str2 ]]; then
	echo str1 is not empty and str2 is empty
fi