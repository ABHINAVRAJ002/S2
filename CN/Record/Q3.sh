Shell script using command line to check triangle is equilateral isosceles or scalene
if [ $# -gt 1 ]
then
echo "Syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter 1st no:"
read a
echo "Enter 2nd no:"
read b
echo "Enter 3rd no:"
read c
fi
if [ `expr $a` -eq $b -a `expr $b` -eq $c ]
then
echo "Equilateral Triangle"
elif [ `expr $a` -eq $b -o `expr $b` -eq $c ]
then
echo "Isoscless Triangle"
else
a2=`expr $a \* $a`
b2=`expr $b \* $b`
c2=`expr $c \* $c`
if [ `expr $a2 + $b2` -eq $c2 ]
then
echo "Right angled Triangle"
else
echo "Scalene Triangle"
fi
