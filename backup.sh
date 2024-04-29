#!/bin/bash

NOW="$(date +"%m-%d-%Y")"
FILE="backup.$NOW.tar.gz"

tar cvf /home/control/work/$FILE

#scp /home/control/work/$FILE webapp@46.101.209.213:/home/webapp/backups
