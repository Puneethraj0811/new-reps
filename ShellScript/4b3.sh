file=$1
if [ $# -eq 1 ]
then
	dirx="."
else
	if [ -e $2 ]
	then
		dirx="$2"
	else
		echo No such directory found
	fi
fi
set -- `ls -l $file`
lcnt=$2
if [ $lcnt -eq 1 ]
then
	echo "No other links"
	exit 0
else
	set -- `ls -i $file`
	inode=$1
	find "$dirx" -inum $inode -print 2>error
fi
