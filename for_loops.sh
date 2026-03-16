#!/bin/bash

function_test(){

for file in *
do
	if [ -f $file ]
	then
		echo $(ls -l $file)
		
	fi

	if [ -d $file ]
	then
		echo $(ls -d $file)
		cd $file
		function_test
		cd ..
	fi
done
}

function_test
