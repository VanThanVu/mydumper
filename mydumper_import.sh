#!/bin/bash 
db='sysops_admin'
inputdir='9prints_master'
sudo myloader --directory="${inputdir}" --database="${db}" --overwrite-tables --threads=6 --verbose=3
