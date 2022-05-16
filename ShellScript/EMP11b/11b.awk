#Write an awkscript to compute gross salary of an employee accordingly to rule given below.
#If basic salary < 10000 then HRA=15% of basic & DA=45% of basic.
#If basic salary is >=1000 then HRA=20% of basic & DA=50% of basic.

BEGIN {
	FS="|"
	print "--------------------EMPLOYEE DETAILS--------------------"
	print "SLNO\tEMPID\tENAME\t\t\tDESIG\t\t BSAL\t DA\t HRA\t GSAL"
}
{
	slno++
	if($6<10000)
	{
		DA=0.45*$6
		HRA=0.15*$6
	}
	else
	{
		DA=0.5*$6
		HRA=0.2*$6
	}
	GROSS=DA+HRA+$5
	printf("\n%d\t%d\t%-20s\t%-10s\t%5d\t%5d\t%5d\t%5d",slno,$1,$2,$3,$6,DA,HRA,GROSS)
	TBSAL+=$6
	TDA+=DA
	THRA+=HRA
	TGROSS+=GROSS
}
END {
	print "============================================================================================================================"
	printf("\nTotal Basic salary:	%d\nTotal DA: 		%d\nTotal HRA:		%d\nTotal gross salary:	%d\n",TBSAL,TDA,THRA,TGROSS)
}
