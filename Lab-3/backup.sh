#!/bin/bash


if [ $# -ne 1 ]; then
	echo "Usage: $0 <project-directory>"
	exit 1
fi


project_dir="$1"

if [ ! -d "$project_dir" ]; then
	echo "Directory does not exist."
	exit 1
fi

date=$(date +"%Y-%m-%d")
backup_dir="project_backup_$date"

mkdir "$backup_dir"

cp -r "$project_dir"/* "$backup_dir"

count=$(find "$backup_dir" -type f | wc -l)

echo "Backup completed successfully."
echo "Total files backed up: $count"
