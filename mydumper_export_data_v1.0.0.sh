#!/bin/bash
dir_backup='/data/thanvv_secops/gossby'
dir_logfile='/data/thanvv_secops/mydumper.log'
db_skip_tables='/data/thanvv_secops/skip.txt'
db_user='sysops_admin'
db_pass='#####'
db_hosts='x.x.x.x'
db_name='9prints_gossby'

mydumper \
--threads=4 \
--host=$db_hosts \
--user=$db_user \
--password=$db_pass \
--database=$db_name \
--compress \
--triggers \
--routines \
--events \
—-rows=10000000 \
-v 3 \
--long-query-guard 999999 \
--no-locks \
--outputdir=$dir_backup \
--logfile=$dir_logfile \
-O /data/thanvv_secops/skip.txt \
