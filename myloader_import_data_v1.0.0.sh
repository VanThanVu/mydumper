#!/bin/bash
dir_backup='/data/thanvv_secops/gossby'
dir_logfile='/data/thanvv_secops/myloader_import.log'
db_user='root'
db_pass='#####'
db_hosts='x.x.x.x'
time myloader --host=$db_hosts --user=$db_user --password=$db_pass --directory=$dir_backup --queries-per-transaction=50000 --threads=4 --verbose=3 -e 2>$dir_logfile
