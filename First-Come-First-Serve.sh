#!/bin/bash
bt=(6 8 7 9)
n=${#bt[@]}
wt=()
tat=()
wt[0]=0
for ((i=1; i<n; i++)); do
wt[i]=$((wt[i-1]+bt[i-1]))
done
for ((i=0; i<n; i++)); do
tat[i]=$((wt[i]+bt[i]))
done
twt=0
ttat=0
for ((i=0;i<n;i++)); do
twt=$((twt+wt[i]))
ttat=$((ttat+tat[i]))
done
avg_wt=$(echo "scale=2; $twt/$n"|bc)
avg_tat=$(echo "scale=2; $ttat/$n"|bc)
echo "FCFS Scheduling:"
echo -e "Process\tBT\tWT\tTAT"
for ((i=0;i<n;i++)); do
echo -e "P[$((i+1))]\t${bt[i]}\t${wt[i]}\t${tat[i]}"
done 
echo -e "\nAverage Waiting time = $avg_wt"
echo -e "Average Turnaround time = $avg_tat"
