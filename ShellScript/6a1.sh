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
