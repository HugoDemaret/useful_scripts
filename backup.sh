#!/bin/bash

#This is a backup script using incremental tar.gz
#This script comes with no garantee nor any licence
###################################################
###########Hugo Demaret############################
###################################################

# I recommand to use this script with a cron configuration (see crontab)

# Timestamp with : year-month-day-hour-minutes-seconds
TIMESTAMP=$(date +%Y-%m-%d-%T)

### THING TO SAVE
tar --listed-incremental=/PATH/TO/BACKUP/project.star -cvzf /PATH/TO/BACKUP/project.backup.${TIMESTAMP}.tar.gz /PATH/OF/THING/TO/SAVE
# If you have more than one thing to save using this script, just copy paste the former line, changing the paths and names