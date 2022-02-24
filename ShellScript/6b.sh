for i in'ls'
do 	
	val=`expr length $i`
	if  [ $val -ge 10 ]
	then 
		echo "$i"
	else
		echo "$i <10 characters in its name"
	fi
done
