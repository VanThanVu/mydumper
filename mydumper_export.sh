#!/bin/bash
db='9prints_master'
outputdir='9prints_master'
sudo mydumper --regex="^${db}\.osc_[a-zA-Z]+.*" --database="${db}" --outputdir="${outputdir}" --build-empty-files --threads=2 --verbose=3 --logfile=mydumper_export.txt
