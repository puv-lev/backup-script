#!/usr/bin/env bash

# Папка для резервного копирования
SOURCE_DIR="$HOME/my_data"

# Место сохранения архива
BACKUP_DIR="$HOME/backups"

# Имя архива
DATE=$(date +%F_%H-%M-%S)
ARCHIVE_NAME="backup_$DATE.tar.gz"

# Файл лога
LOG_FILE="$BACKUP_DIR/backup.log"

# Создаем папку
mkdir -p "$BACKUP_DIR"

# Архивируем
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR" >> "$LOG_FILE" 2>&1

# Записываем в лог
echo "[$(date '+%F %T')] Backup создан: $ARCHIVE_NAME" >> "$LOG_FILE"
	

