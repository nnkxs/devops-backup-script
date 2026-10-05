#!/bin/bash

SOURCE_DIR="$HOME/practice"
BACKUP_DIR="$HOME/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
LOG_FILE="$HOME/backup.log"

mkdir -p "$BACKUP_DIR"

if [ -d "$SOURCE_DIR" ]; then
    tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE_DIR"
    echo "$DATE: Backup completed successfully" >> "$LOG_FILE"
    echo "Backup saved to $BACKUP_DIR/backup_$DATE.tar.gz"
else
    echo "$DATE: ERROR - source directory not found" >> "$LOG_FILE"
    echo "Error: source directory not found"
fi

for file in $(ls -t ~/backups | tail -n +4); do
    rm "$BACKUP_DIR/$file"
done

echo "Script finished at $(date +%H:%M:%S)"
