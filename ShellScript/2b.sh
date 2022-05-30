#Write a shell script which accepts valid log-in names as arguments and prints their corresponding home directories, if no arguments are specified, 
#print a suitable error message.

if [ $# -ne 0 ]
then
	for i in $* 
	do
		grep $1 /etc/passwd>ud
		if [ $? -eq 0 ]
		then
			echo "user exit"
			h=`cut -d ":" -f 6 ud`
			echo Home directory of $1 is $h
		else
			echo "user not found"
		fi 
	done
else
	echo "enter a login\user name"
fi
