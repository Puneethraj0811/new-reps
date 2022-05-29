#Write s a shell script to find a file/s that matches a pattern given as command line argument in the home directory, display the 
#contents of the file and copy the file into the directory ~/mydir.

if [ $# -ge 1 ]
then
	if [ ! -e ~/mydir ]
	then
		mkdir ~/mydir
	fi  
  	for k in $*
  	do 
     		if [ -f $k ]
     		then 
       			ls $k
       			echo "========================="
       			cat $k
       			echo "========================="
       			cp $k ~/mydir
      		else
       			echo No file with pattern $k  
     		fi
  	done   
else
	echo enter the pattern
fi
