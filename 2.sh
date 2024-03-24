#!/bin/bash 
echo “Enter the string” 
read word 
d=0 
spl=0 
sp=0 
c=0 
a=0 
e=0 
i=0 
o=0 
u=0 
len=${#word} 
for((m=0;m<len;m++)) 
do 
ch=${word:m:1} 
case $ch in 
a|A)a=$((a+1));; 
e|E)e=$((e+1));; 
i|I)i=$((i+1));; 
o|O)o=$((o+1));; 
u|U)u=$((u+1));; 
0|1|2|3|4|5|6|7|8|9) 
d=$((d+1));; 
" ") sp=$((sp+1));; 
b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z|B|C|D|F|G|H|J|K|L|M|N|P|Q|R|S|T|V|W|X|Y|Z)  
c=$((c+1));; 
*) spl=$((spl+1)) 
esac 
done 
echo Number of A/a : $a 
echo Number of E/e : $e 
echo Number of I/i : $i 
echo Number of O/o : $o 
echo Number of U/u : $u 
echo Number of digits : $d 
echo Number of spaces : $sp 
echo Number of consonants : $c 
echo Number of special characters : $spl
