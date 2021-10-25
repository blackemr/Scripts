#!/bin/bash
# Created By: Matt Blackert
declare -a Commands=('ns' 'a' 'aaaa' 'mx' 'soa')
echo "Scan for $1" >> output.txt
for i in "${Commands[@]}"; do
	echo "Section $i of host scan" >> output.txt
	host -t "$i" $1 >> output.txt
done
printf "End scan for $1 \n\n" >> output.txt
