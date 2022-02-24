file1=$1
if [ -f $file1 ]
then
	set -- `ls -l $file1`
	echo "Modified time of $file1 is $8"
else
	echo "$file1 not found"
fi
