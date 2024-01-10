#!/bin/bash
a=$(df | fgrep -e "/dev/sdc" -e "Filesystem" | sed -n 2p | awk '{print $4}')
b=$(du -s /mnt/sdb_2TB/skyopus-ftp | awk '{print $1}')
e=$(date +" %a %d %b %Y %r")

f=$(df -h| fgrep -e "/dev/sdc" -e "Filesystem" | sed -n 2p | awk '{print $4}')
g=$(du -sh /mnt/sdb_2TB/skyopus-ftp | awk '{print $1}')

h=$(cd /mnt/sdc_4TB/bkp && du -sh -- "$(ls /mnt/sdc_4TB/bkp | sed -n '1p')" | awk -F" " '{print $1}')
p=$(cd /mnt/sdc_4TB/bkp && du -sh -- "$(ls /mnt/sdc_4TB/bkp | sed -n '1p')" | awk -F" " '{print $2}')

while [ $b -gt $a ]
 do
   echo "Available storage space: ${f}"
   echo "Data backup size is:     ${g}"
   echo "No, enough space to take backup on, ${e} "
   echo "This folder going to be deleted, Size of the Folder: ${h} and Name: ${p}"
   echo "----------------------------"
   cd /mnt/sdc_4TB/bkp
   rm -rf -- "$(ls /mnt/sdc_4TB/bkp | head -n 1)"  	
   a=$(df | fgrep -e "/dev/sdc" -e "Filesystem" | sed -n 2p | awk '{print $4}')   
   f=$(df -h| fgrep -e "/dev/sdc" -e "Filesystem" | sed -n 2p | awk '{print $4}')
   g=$(du -sh /mnt/sdb_2TB/skyopus-ftp | awk '{print $1}')
   e=$(date +" %a %d %b %Y %r")
   h=$(cd /mnt/sdc_4TB/bkp && du -sh -- "$(ls /mnt/sdc_4TB/bkp | sed -n '1p')" | awk -F" " '{print $1}')
   p=$(cd /mnt/sdc_4TB/bkp && du -sh -- "$(ls /mnt/sdc_4TB/bkp | sed -n '1p')" | awk -F" " '{print $2}')
 done
echo "Available storage space: ${f}"
echo "Data backup size is:     ${g}"
echo "\nReady to backup on:${e}"
