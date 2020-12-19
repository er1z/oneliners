#!/bin/sh
innobackupex --user=backup --password=pass --defaults-file=/usr/local/etc/my.cnf /var/backups/sql
innobackupex --incremental --user=backup --password=pass --defaults-file=/usr/local/etc/my.cnf /var/backups/sql
