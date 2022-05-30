#Write a shell script that accepts filename as argument and display its creation time if fileexist and if does not send output error message.

if [ $# -eq 1 ]
then
	file1=$1
	if [ -f $file1 ]
	then
		set -- `ls -l $file1`
		echo "$file1 created at $6 $7 $8"
	else
		echo "$file1 not found"
	fi
else
	echo Enter filename
fi
