#!/bin/bash
echo "Hello GCash Cadets!"
echo "Welcome to Shell Scripting!"
echo How many users you want to create?

read numberInput

echo $numberInput of users will be made
echo ----------


for ((i=0; i<$numberInput; i++))
do
	echo Username:
	read username
	sudo useradd -m -s "/bin/bash" $username
	sudo passwd $username	
	grep $username /etc/passwd
	echo ----------
done
