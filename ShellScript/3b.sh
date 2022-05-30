#Write a shell script to implement terminal locking (Similar to the lock command). It should prompt for the user for a password. After accepting 
#the password entered by the user, it must prompt again for the matching password as confirmation and if match occurs, it must lock the keyword until 
#a matching password is entered again by the user. Note the Script must be written to disregard BREAK, control-D. No time limit need be implemented for 
the lock duration.

echo Enter password
stty -echo
read p1
stty echo
echo Enter confirmation password
stty -echo
read p2
stty echo
while [ "$p1" != "$p2" ]
do
	clear
	echo Password doesnot match. Re-enter the password
	stty -echo
	read p2
	stty echo
done
clear
echo Terminal locked
echo Enter the password to unlock
stty -echo
read p3
while [ "$p1" != "$p3" ]
do
	clear
	echo Terminal locked
	echo Password doesnot match. Re-enter the password
	read p3
done
echo Terminal unlocked
