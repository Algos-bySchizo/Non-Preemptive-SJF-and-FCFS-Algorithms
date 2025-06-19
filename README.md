# First-Come-First-Serve (FCFS) and Shortest-Job-First (SJF) Scheduling Algorithms in Bash

## Overview
This project demonstrates two classic CPU scheduling algorithms—**First-Come-First-Serve (FCFS)** and **Shortest-Job-First (SJF)**—implemented in Bash shell scripts. Both are non-preemptive algorithms used in operating systems. This repository is intended as an educational resource for students and anyone interested in learning about operating system concepts and shell scripting.

## Why This Project?
As part of my journey learning about operating systems at university, I decided to implement classic scheduling algorithms using Bash. Implementing both FCFS and SJF in Bash helped me understand these algorithms and shell scripting fundamentals. I hope this project helps others who are learning as well!

---

## 1. First-Come-First-Serve (FCFS) Scheduling

### What is FCFS Scheduling?
- **FCFS (First-Come-First-Serve)** is a non-preemptive scheduling algorithm.
- Processes are executed in the order they arrive in the ready queue.
- It is simple to implement but can lead to the "convoy effect" where short processes wait for long ones to finish.

### How the Script Works
- The script defines an array of burst times (the time each process needs on the CPU).
- It calculates the **waiting time (WT)** and **turnaround time (TAT)** for each process.
- It computes the average waiting and turnaround times.
- The results are displayed in a formatted table.

### Script: `First-Come-First-Serve.sh`

#### Example Output
```
FCFS Scheduling:
Process	BT	WT	TAT
P[1]    6   0   6
P[2]    8   6   14
P[3]    7   14  21
P[4]    9   21  30

Average Waiting time = 10.25
Average Turnaround time = 17.75
```

### How to Run FCFS Script
1. **Make the script executable:**
   ```bash
   chmod +x First-Come-First-Serve.sh
   ```
2. **Run the script:**
   ```bash
   ./First-Come-First-Serve.sh
   ```

---

## 2. Shortest-Job-First (SJF) Scheduling

### What is SJF Scheduling?
- **SJF (Shortest-Job-First)** is a non-preemptive scheduling algorithm.
- The process with the shortest burst time is executed first.
- It minimizes the average waiting time but requires knowledge of burst times in advance.

### How the Script Works
- The script sorts the processes by their burst times.
- It calculates the **waiting time (WT)** and **turnaround time (TAT)** for each process after sorting.
- It computes the average waiting and turnaround times.
- The results are displayed in a formatted table.

### Script: `Shortest-Job-First.sh`

#### Example Output
```
SJF Shortest Job First Scheduling
Processes	BT	WT	TAT
P[4]        3   0   3
P[1]        6   3   9
P[3]        7   9   16
P[2]        8   16  24

Average Turnaround Time =8.00
Average Waiting Time =7.00
```

### How to Run SJF Script
1. **Make the script executable:**
   ```bash
   chmod +x Shortest-Job-First.sh
   ```
2. **Run the script:**
   ```bash
   ./Shortest-Job-First.sh
   ```

---

## Customizing the Scripts
- You can change the burst times by editing the `bt` array at the top of each script:
  ```bash
  bt=(6 8 7 9)  # FCFS example
  bt=(6 8 7 3)  # SJF example
  ```
- Add or remove values to simulate different process scenarios.

## Educational Value
- **Learn OS Concepts:** Understand how basic scheduling works in operating systems.
- **Practice Bash Scripting:** See how arrays, loops, and arithmetic are handled in Bash.
- **Experiment:** Try modifying the scripts to implement other algorithms like Round Robin.

## License
This project is open source and available under the [MIT License](LICENSE).

## Author
- Muhammad Usman Junaidy
- University Student | Operating Systems Enthusiast

---
Feel free to fork, modify, and share! If you found this helpful or have suggestions, please open an issue or pull request. 
