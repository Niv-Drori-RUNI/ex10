#!/bin/bash

echo " Question 1 part a:"
awk 'END{print NR}' aliceinwonderland.txt
echo "The number of rows is 3325"

echo "Question 1 part b:"
awk '{for(i=1;i<=NF;i++) {if($i ~ /^Alice$/) count++}} END {print count}' aliceinwonderland.txt
echo "The number of times the word Alice (with an whitespace before and after the word) is shown in the text is 212"

echo "Question 1 part c:"
awk '{for (i=1; i<=NF; i++) {word=tolower($i); gsub(/[^a-z]/, "", word); if (word != "") words[word]++}} END {for (w in words) if (words[w] == 1) print w}' aliceinwonderland.txt

echo "Question 1 part d:"
for word in $(cat aliceinwonderland.txt) ; do echo $word; done | awk '! /([[:punct:]]|[[:space:]])/' | awk '{a[$1]++}END {for (k in a) print a[k], k}' | sort -n -r | head -n 5

echo "Question 1 part e:"
awk '{ for (i = 1; i <= NF; i++) { word = $i; gsub(/[^a-zA-Z]/, "", word); if (word != "") { total_length += length(word); word_count++ } } } END { if (word_count > 0) print total_length / word_count; else print "No valid words found" }' aliceinwonderland.txt

