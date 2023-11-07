#!/bin/bash

#we are taking backup of advance_shell_script directory 

src_dir=/home/ubuntu/advance_shell_script
tgt_dir=/home/ubuntu/backups

curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")
backup_file=$tgt_dir/$curr_timestamp.tgz

echo "$curr_timestamp"
echo "$backup_file"


tar czf $backup_file --absolute-names $src_dir


echo "backup completed"
