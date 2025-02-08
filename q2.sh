#!/bin/bash

echo "Question 2 part a:"
sed -E -n '/Holmes|Sherlock/p' sherlockholmes.txt | wc -l
echo "463 lines"

echo "Question 2 part b:"
sed -E -n '/Holmes|Sherlock/p' sherlockholmes.txt | grep -E -o 'Holmes|Sherlock' | wc -l
echo "554 times"

echo "Question 2 part c:"
sed -E 's/^/Hello:/' sherlockholmes.txt 

echo "Question 2 part d:"
sed -E 's/[A-Z][a-z]{1,}\s[A-Z][a-z]{1,}/Niv Drori/g' sherlockholmes.txt

echo "Question 2 part e:"
sed -E 's/\(([^)]*)\)/[\1]/g' sherlockholmes.txt

