#!/usr/bin/env bash
# Backing up our directory on another server

# Define the remote server
remote_server="2f05c1f8800b@2f05c1f8800b.3be8ebfc.alu-cod.online"
remote_dir="/summative/1023-2024j/"

#Source Directory
source_dir="negpod_26-q1"

#Backup Directory
backup_dir="backup-negpod_26-q1"

#create_dir
mkdir "$backup_dir"

#copy content of source_dir
cp -r "$source_dir" "$backup_dir"

#Transfer to the remote server
scp -r "$backup_dir" "$remote_server:$remote_dir"

#Remove the backup from our sandbox
rm -r "$backup_dir"

echo "Directory backed up successfully"
