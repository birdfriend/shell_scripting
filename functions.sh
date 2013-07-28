#!/bin/bash

function getArgsInfo()
{
	echo $@;
	echo $*;
}

getArgsInfoFunc()
{
	num=$#
	for (( i = 0; i < $num; i++ )); do
		#statements
		let arg=i+1
		echo $arg
	done
}

getArgsInfo good morning
getArgsInfoFunc good afternoon