#!/bin/bash

tar cvzf /backup/backup_$(date +%d_%H%M%S).tar.gz /home >>/backup/backup.log 2>&1
if [ $? -eq 0 ]; then
   echo "[ OK ] backup success."
else
   echo "[ FAIL ] backup failed."
fi
