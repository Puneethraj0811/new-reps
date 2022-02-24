if [ -e $1 ]
then 
	set -- `ls -l $1`
	echo "Permissions are:$1"
	echo "Links are:$2"
	echo "User:$3"
	echo "Group user:$4"
	echo "Date modified:$5 $6 $7 at $8"
	echo "File name: $9"
else
	echo "File not found!"
fi
