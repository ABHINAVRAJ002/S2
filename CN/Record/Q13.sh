Shell script to copy a set of files given as pairs at command prompt

#!/bin/bash
# Check if the number of arguments is even
r=`expr $#if [ $r -ne 0 ]
then
echo "filenames are not in pairs"
exit 1
fi
# Loop through arguments in pairs
while [ $# -ne 0 ]
do
# Copy source file to destination
cp "$1" "$2"
echo "Copied '$1' to '$2'"
shift
shift
done
exit 0 % 2
