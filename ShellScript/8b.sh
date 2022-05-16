#Write a shell script that reports the logging on of as specified user within one minute after he/she login. The script automatically terminates if 
#specified user does not login during specified in period of time.

if [ $# -eq 1 ]
then
	var=`grep -owi $1 /etc/passwd`
	if [ $? -eq 0 ]
	then
		sleep 1m
		success=`who | grep -wo "$var"`
		if [ $? -eq 0 ]
		then
			echo "Login Success"
		else 
			echo "Login Not Success"
		fi
	else
		echo "User Doesn't Exists"
	fi
else 
	echo "Please provide 1 argument"
fi
