#!/bin/bash
TIME=`date +%F`
mysqldump --all-databases -u root --password=haslo > /var/backups/mysql/$TIME.sql
bzip2 /var/backups/mysql/$TIME.sql

tar --create /var/lib/mysql/* --file /var/backups/mysql/$TIME.sql.raw
bzip2 /var/backups/mysql/$TIME.sql.raw
