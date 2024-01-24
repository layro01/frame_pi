#!/bin/bash

# Directory to store logs
LOG_DIR="/home/rlayzell/frame_pi/logs"

# Create the logs directory if it doesn't exist
mkdir -p "$LOG_DIR"

# Define the download log file path with timestamp
DOWNLOAD_LOG_FILE="$LOG_DIR/ig-download-photos-$(date +\%Y\%m\%d\%H\%M\%S)_cron_log.txt"

# Define the download cron job command with redirection to log file
DOWNLOAD_CRON_COMMAND="0 * * * * /home/rlayzell/frame_pi/ig-download-photos.sh >> \"$DOWNLOAD_LOG_FILE\" 2>&1"

# Define the purge log file path with timestamp
PURGE_LOG_FILE="$LOG_DIR/purge-photos-$(date +\%Y\%m\%d\%H\%M\%S)_cron_log.txt"

# Define the purge cron job command with redirection to log file
PURGE_CRON_COMMAND="0 0 */3 * * find /home/rlayzell/frame_pi/photos/ -type f -name \"*.jpg\" -mtime 30 -exec rm {} + >> \"$PURGE_LOG_FILE\" 2>&1"

# Add the download and purge cron jobs to the user's crontab
echo -e "$DOWNLOAD_CRON_COMMAND\n$PURGE_CRON_COMMAND" | crontab -

echo "Cron jobs installed successfully. Logs will be saved in $LOG_DIR."
