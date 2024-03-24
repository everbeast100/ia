4.Write a shell script to accept student names and marks in 3 subjects 
through command line arguments. Find the total marks and grade 
(depending on the total marks).  
#!/bin/bash 
name=$1 
reg=$2 
m1=$3 
m2=$4 
m3=$5 
echo "Student Name:" $1 
echo "Registration NO:" $2 
echo "Marks secured in OS:" $3 
echo "Marks secured in Python:" $4 
echo "Marks secured in AI:" $5 
total=$((m1+m2+m3)) 
avg=$((total/3)) 
echo "Total Marks:" $total 
echo "Average:" $avg 
if [ $m1 -lt 35 ]||[ $m2 -lt 35 ]||[ $m3 -lt 35 ] 
then 
echo "FAIL" 
elif [ $avg -gt 70 ] 
then 
echo "Grade:Distinction" 
elif [ $avg -gt 60 ] 
then 
echo "Grade: First class" 
elif [ $avg -gt 50 ] 
then 
echo "Grade:Second class" 
else 
fi 
echo "Pass"