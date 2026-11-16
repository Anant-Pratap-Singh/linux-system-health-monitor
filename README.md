# Linux System Health Monitor

A Bash-based Linux system monitoring tool that collects essential system health information and generates timestamped text reports.

## Features

- **System Uptime:** Displays how long the system has been running.
- **CPU Load:** Displays CPU load averages (1, 5, and 15 minutes).
- **Memory Usage:** Shows total, used, free, and available memory.
- **Disk Usage:** Displays filesystem storage usage.
- **Automated Reports:** Generates timestamped `.txt` health reports.
- **Organized Storage:** Saves generated reports inside the `reports/` directory.

## Technologies Used

- Linux (Ubuntu 24.04)
- Bash Shell Scripting
- Windows Subsystem for Linux (WSL 2)
- Visual Studio Code
- Linux System Utilities

## Project Structure

```text
linux-system-health-monitor/
│
├── system_monitor.sh
├── README.md
│
└── reports/
    └── health_report_TIMESTAMP.txt
```

## Installation and Execution

### 1. Clone the repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

### 2. Navigate to the project directory

```bash
cd linux-system-health-monitor
```

### 3. Give execution permission

```bash
chmod +x system_monitor.sh
```

### 4. Execute the script

```bash
./system_monitor.sh
```

### 5. View the generated report

```bash
cat reports/health_report_*.txt
```

## Sample Output

The generated report contains:

- Date and hostname
- System uptime
- CPU load averages
- Memory usage
- Disk usage

## Learning Outcomes

Through this project, I practised:

- Linux command-line operations
- Bash scripting
- Linux system monitoring
- File and directory management
- Automated report generation
- Working with Ubuntu through WSL 2

## Author

Anant Pratap Singh

Linux System Health Monitor – A practical Linux and Bash scripting project.