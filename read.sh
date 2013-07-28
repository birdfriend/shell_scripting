#!/bin/bash

read -n 2 var
echo $var

#read a password in nonechoed mode
read -s pwd
echo $pwd

#dispay a message with read using
read -p "Enter input: " var
echo $var