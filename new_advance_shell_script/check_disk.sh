#!/bin/bash

# df -H | awk '{print $5 " " $1}'

# df -H | awk '{print $5 " " $1}' | while read output;  -- this line will give the output of (df -H aws '{print $5 " " $1}') to while loop and will get iterated.

alert=10
df -H | awk '{print $5 " " $1}' | while read output;
do
 usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
 echo "$usage"
 file_sys=$(echo $output | awk '{print $2}')
 if [ $usage -ge $alert ]
 then
	 echo "critical for $file_sys"
 fi
# echo "Disk detail: $output"
done
