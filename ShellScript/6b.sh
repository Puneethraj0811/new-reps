#Write a shell script to list all the files in a directory whose filename is at least 10 characters. (use expr command to check the length).

for i in `ls`
do 	
	val=`expr length $i`
	if  [ $val -ge 10 ]
	then 
		echo "$i"
	else
		echo "filename $i is not greater than 10 characters"
	fi
done
