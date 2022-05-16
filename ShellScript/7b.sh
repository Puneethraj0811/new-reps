#Write a shell script that accepts a list of filenames as its argument, count and report occurrence of each word that is present in the first argument 
#file on other argument files.

if [ $# -ne 0 ]
then
	if [ $# -lt 2 ]
	then
		echo Enter files to match
	else
		if [ -e $1 ]	
		then
			for fn in $*
			do
				if [ $fn = $1 ]
				then
					continue
				fi
				for w in `cat $1`
				do
					lc=`grep -wio "$w" $fn | wc -l`
					echo $w is $lc times in $fn
				done
			done
		else
			echo Enter pattern file
		fi
	fi
else
	echo Enter parameter
fi
