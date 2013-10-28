#!/bin/bash

#It can be used to perform substitution of characters, deletion of the characters, and
#sequeezing of repeated characters from the standard input.

#tr [options] set1 set2
#Input characters from stdin are mapped from set1 to set2, and the output is written to stdout
#set1 and set2 are character classes or a set of characters. If the length of sets is unequal,
#set2 is extended to the length of set1 by repeating the last character, or else, if the length
#of set2 is greater than that of set1, all the characters exceeding the length of set1 are ignored.

echo "HELLO" | tr 'A-Z' 'a-z'
echo 12345 | tr '0-9' '9876543210'
echo 87654 | tr '9876543210' '0-9'

#-d is used to delete a set of characters that appear on stdin
echo "hello world 234" | tr -d '0-9'

#-c complementing character set
#here the complement set is the set containing all numbers, space characters, and newline characters
echo "hello  world 234" | tr -d -c '0-9 \n'

#-s to squeeze repeating characters from the input
echo "hello     world 12 34 56" | tr -s ' '
echo -e "hello \n world" | tr -s '\n'