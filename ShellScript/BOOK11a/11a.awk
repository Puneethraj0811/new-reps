#Write an awk script to find out total number of books sold in each discipline as well as total book sold using associate array down table as given below.
#Electrical 34
#Mechanical 67
#Electrical 80
#Computer Science 43
#Civil 98
#Mechanical 65
#Computer Science 64

BEGIN {
	print "Book Details"
	print "\nSLNO\tDEPARTMENT\t\tTOTALBOOKS\n"
}
{
book[$1]+=$2
total+=$2
}
END {
	for(i in book) {
		SN++
		printf("%d\t%-20s\t%d\n",SN,i,book[i])
	}
	print "\n=========================================\n"
	printf("Total books: %d\n",total)
}
