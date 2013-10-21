#!/bin/bash

#converting multiple lines of input to a single-line output
echo -e "1 2 3 4 5 6 \n 7 8 9 \n 10 11\n";
echo -e "1 2 3 4 5 6 \n 7 8 9 \n 10 11\n" | xargs;

#split any stdin text into lines of n arguments each
echo -e "1 2 3 4 5 6 \n 7 8 9 \n 10 11\n" | xargs -n 2;

echo $*'#';

#for executing a command with x arguments per each execution, use
#input | xargs -n x
echo "1 2 3 4 5 6 7 8" | xargs -n 2 echo;

#find and xargs are best friends
find . -type f -name "*.sh" | xargs ls -l