#!/bin/bash

# script to look for empty files in a folder, count and delete them
cnt=0
for f in /home/dhiraj/ddd/reddit_threads/*; do
	#echo $f; 
	size="$(wc -c < "$f")"; # get only the filesize
	if [ $size -eq 0 ]; then
		#echo $f, $size
		echo "Deleting file $f"
		cnt=$(($cnt+1 ))
		rm "$f"
	fi	
done
echo "Number of empty files deleted: $cnt"