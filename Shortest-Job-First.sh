#!bin/bash
bt=(6 8 7 3)
pid=(1 2 3 4)
n=${#bt[@]}
for ((i=0;i<n;i++));do
for ((j=i+1;j<n;j++));do
if ((bt[i]>bt[j]));then
temp=${bt[i]}
bt[i]=${bt[j]}
bt[j]=$temp

temp=${pid[i]}
pid[i]=${pid[j]}
pid[j]=$temp
fi
done 
done 

wt=()
tat=()
wt[0]=0
for((i=0; i<n; i++)); do 
wt[i]=$((wt[i-1]+bt[i-1]))
done
for((i=0;i<n;i++)); do 
tat[i]=$((wt[i]+bt[i]))
done
ttat=0
twt=0
for((i=0;i<n;i++)); do
ttat=$((ttat+tat[i]))
twt=$((twt+wt[i]))
done
avg_tat=$(echo "scale=2; $ttat/$n"|bc)
avg_wt=$(echo "scale=2; $twt/$n"|bc)
echo "SJF Shortest Job First Scheduling"
echo -e "Processes\tBT\tWT\tTAT"
for((i=0;i<n;i++));do
echo -e "P[${pid[i]}]\t\t${bt[i]}\t${wt[i]}\t${tat[i]}"
done
echo -e "\nAverage Turnaround Time =$avg_tat"
echo -e "Average Waiting Time =$avg_wt"
