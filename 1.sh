 #!/bin/bash 
echo "Enter the size of array" 
read n  
echo "Enter element" 
for((i=0;i<n;i++)) 
do  
read ele 
num[i]=$ele 
done 
echo "element ${num[*]}" 
ps_count=0 
ps_sum=0 
ng_count=0 
ng_sum=0 
z_count=0 
for((i=0;i<$n;i++)) 
do  
if [ ${num[i]} -gt 0 ] 
then 
ps_count=$((ps_count + 1)) 
ps_sum=$((ps_sum + ${num[i]})) 
elif [ ${num[i]} -lt 0 ]  
then 
ng_count=$((ng_count + 1)) 
ng_sum=$((ng_sum + ${num[i]})) 
else 
z_count=$((z_count + 1)) 
fi 
done 
echo positive number $ps_count 
echo negative number $ng_count 
echo Zeroes $z_count 
echo sum of positive number $ps_sum 
echo sum of negative number $ng_sum
