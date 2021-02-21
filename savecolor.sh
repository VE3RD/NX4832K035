#! /bin/bash
#############################################
# Save Colors 			            #
#                                           #
#                                           #
#                                           #
# VE3RD                          2021/-1/30 #
#############################################
set -o errexit
set -o pipefail
sudo mount -o remount,rw /
dirn=/usr/local/etc/Nextion_Support/ColorDB.txt
echo "$1" > /home/pi-star/SaveTest.txt
if [ ! "$4" ]; then
   echo "Not enough Parameters - Set Param1, Value1, Param2, Value2" >> /home/pi-star/SaveTest.txt
  exit
fi


  echo "$1  $2  $3" >> /home/pi-star/SaveTest.txt
  echo "$1  $4  $5" >> /home/pi-star/SaveTest.txt

             sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\('"$2"'=\).*/\1'"$3"'/m;P;d' $dirn
             sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\('"$4"'=\).*/\1'"$5"'/m;P;d' $dirn

echo "Saved CS"
sudo mount -o remount,ro /

