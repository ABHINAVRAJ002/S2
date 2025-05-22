Q)Write a shell script program to test whether given year is a leap year.  

#!/bin/bash
clear
if [ $# -gt 1 ]
then
echo "syntax is <$0> [<year>]"
exit 1
fi
if [ $# -ne 1 ]
then
yr=`date +%Y`
else
yr=$1
fi
d4=`expr $yr % 4`
d100=`expr $yr % 100`
d400=`expr $yr % 400`
if [ $d4 -eq 0 -a $d100 -ne 0 -o $d400 -eq 0 ]
then
echo " $yr is a leap year"
else
echo " $yr is not a leap year"
fi
Output:
Enter the year : 2000
2000 is a leapyear



Algorithm:
1. Step 1: Ask the user to enter a year.
2. Step 2: Store the input in variable `l`.
3. Step 3: Check if the year is divisible by 400.
4. Step 4: If true, print that the year is a leap year.
5. Step 5: If false, check if the year is divisible by 4 but not by 100.
6. Step 6: If true, print that the year is a leap year.
7. Step 7: If none of the above conditions are true, print that the year is not a leap year.
