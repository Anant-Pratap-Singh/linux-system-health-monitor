
#!/bin/bash

# Linux System Health Monitoring Tool
# Project: Linux System Health Monitor

set -euo pipefail

# Project directory
PROJECT_DIR="$HOME/linux-system-health-monitor"
REPORT_DIR="$PROJECT_DIR/reports"

# Create reports directory if missing
mkdir -p "$REPORT_DIR"

# Generate report filename
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT_FILE="$REPORT_DIR/health_report_$TIMESTAMP.txt"

# Start report
{
    echo "=========================================="
    echo "       LINUX SYSTEM HEALTH REPORT"
    echo "=========================================="
    echo "Date: $(date)"
    echo "Hostname: $(hostname)"
    echo

    echo "--------------- SYSTEM UPTIME -------------"
    uptime -p
    echo

    echo "--------------- CPU LOAD ------------------"
    echo "Load Average (1, 5, 15 minutes):"
    cat /proc/loadavg
    echo

    echo "--------------- MEMORY USAGE --------------"
    free -h
    echo

    echo "--------------- DISK USAGE ----------------"
    df -h
    echo

    echo "--------------- TOP 5 PROCESSES -----------"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
    echo

    echo "=========================================="
    echo "          END OF HEALTH REPORT"
    echo "=========================================="

} | tee "$REPORT_FILE"

echo
echo "Report saved successfully:"
echo "$REPORT_FILE"
