#Write a shell script that accepts a list of filenames as its argument, count and report occurrence of each word that is present in the first argument 
#file on other argument files.

if [ $# -ne 0 ]
then
	if [ $# -lt 2 ]
	then
		echo Enter files to match
	else
		if [ -f $1 ]	
		then
			for fn in $*
			do
				if [ $fn = $1 ]
				then
					continue
				fi
				if [ -f $fn ]
				then
					for w in `cat $1`
					do
						lc=`grep -wio "$w" $fn | wc -l` 
						echo $w is $lc times in $fn
					done
				else 
					echo File $fn does not exist
				fi 
			done
		else
			echo Pattern file does not exist
		fi
	fi
else
	echo Enter pattern file and files to match
fi
