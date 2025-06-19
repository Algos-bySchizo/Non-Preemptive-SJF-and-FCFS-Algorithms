# First-Come-First-Serve (FCFS) Scheduling Algorithm in Bash

## Overview
This project demonstrates the **First-Come-First-Serve (FCFS)** CPU scheduling algorithm, implemented in a Bash shell script. FCFS is one of the simplest scheduling algorithms used in operating systems, where the process that arrives first is executed first. This repository is intended as an educational resource for students and anyone interested in learning about operating system concepts and shell scripting.

## Why This Project?
As part of my journey learning about operating systems at university, I decided to implement classic scheduling algorithms using Bash. While FCFS is a common algorithm, implementing it in Bash helped me understand both the algorithm and shell scripting fundamentals. I hope this project helps others who are learning as well!

## What is FCFS Scheduling?
- **FCFS (First-Come-First-Serve)** is a non-preemptive scheduling algorithm.
- Processes are executed in the order they arrive in the ready queue.
- It is simple to implement but can lead to the "convoy effect" where short processes wait for long ones to finish.

## How the Script Works
- The script defines an array of burst times (the time each process needs on the CPU).
- It calculates the **waiting time (WT)** and **turnaround time (TAT)** for each process.
- It computes the average waiting and turnaround times.
- The results are displayed in a formatted table.

## Script: `First-Come-First-Serve.sh`

### Example Output
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

## How to Run
1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   cd SJF
   ```
2. **Make the script executable:**
   ```bash
   chmod +x First-Come-First-Serve.sh
   ```
3. **Run the script:**
   ```bash
   ./First-Come-First-Serve.sh
   ```

## Customizing the Script
- You can change the burst times by editing the `bt` array at the top of the script:
  ```bash
  bt=(6 8 7 9)  # Modify these values as needed
  ```
- Add or remove values to simulate different process scenarios.

## Educational Value
- **Learn OS Concepts:** Understand how basic scheduling works in operating systems.
- **Practice Bash Scripting:** See how arrays, loops, and arithmetic are handled in Bash.
- **Experiment:** Try modifying the script to implement other algorithms like SJF (Shortest Job First) or Round Robin.

## License
This project is open source and available under the [MIT License](LICENSE).

## Author
- [Your Name]
- University Student | Operating Systems Enthusiast

---
Feel free to fork, modify, and share! If you found this helpful or have suggestions, please open an issue or pull request. 