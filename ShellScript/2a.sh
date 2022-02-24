echo -n "Enter first file"
read file1
if [ -e $file1 ]
then
	set -- `ls -ld $file`
	filename=$1
else
	echo "File does not exist"
	exit
fi
if [ $file1prem ==$file2prem ]
then
	echo "Filenames are identical"
	echo "Permission is $file1prem"
else
	echo "File permissions are not identical"
	echo "Permission of first file1 $file1prem"
	echo "Permission of second file2 $file2orem"
fi
	
