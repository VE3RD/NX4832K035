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
dirn=/home/pi-star/ColorDB.txt
echo "$1 $2" > /home/pi-star/Test.txt

m1=$(echo "$1" | cut -d '/' -f 1)
echo "$m1" >> /home/pi-star/Test.txt
m2=$(echo "$1" | cut -d '/' -f 2)
echo "$m2" >> /home/pi-star/Test.txt
m3=$(echo "$1" | cut -d '/' -f 3)
echo "$m3" >> /home/pi-star/Test.txt
m4=$(echo "$1" | cut -d'/' -f4)
m5=$(echo "$1" | cut -d'/' -f5)
m6=$(echo "$1" | cut -d'/' -f6)
m7=$(echo "$1" | cut -d'/' -f7)
m8=$(echo "$1" | cut -d'/' -f8)
m9=$(echo "$1" | cut -d'/' -f9)
m10=$(echo "$1" | cut -d'/' -f10)
m11=$(echo "$1" | cut -d'/' -f11)
m12=$(echo "$1" | cut -d'/' -f12)
m13=$(echo "$1" | cut -d'/' -f13)
m14=$(echo "$1" | cut -d'/' -f14)
m15=$(echo "$1" | cut -d'/' -f15)
m16=$(echo "$1" | cut -d'/' -f16)
m17=$(echo "$1" | cut -d'/' -f17)
m18=$(echo "$1" | cut -d'/' -f18)
m19=$(echo "$1" | cut -d'/' -f19)
m20=$(echo "$1" | cut -d'/' -f20)
m21=$(echo "$1" | cut -d'/' -f21)
m22=$(echo "$1" | cut -d'/' -f22)
m23=$(echo "$1" | cut -d'/' -f23)
m24=$(echo "$1" | cut -d'/' -f24)
m25=$(echo "$1" | cut -d'/' -f25)


  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc1bco=\).*/\1'"$m2"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc1pco=\).*/\1'"$m3"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc2bco=\).*/\1'"$m4"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc2pco=\).*/\1'"$m5"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc3bco=\).*/\1'"$m6"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc3pco=\).*/\1'"$m7"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc4bco=\).*/\1'"$m8"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc4pco=\).*/\1'"$m9"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc5bco=\).*/\1'"$m10"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc5pco=\).*/\1'"$m11"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc6bco=\).*/\1'"$m12"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc6pco=\).*/\1'"$m13"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc7bco=\).*/\1'"$m14"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc7pco=\).*/\1'"$m15"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc8bco=\).*/\1'"$m16"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc8pco=\).*/\1'"$m17"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc9bco=\).*/\1'"$m18"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc9pco=\).*/\1'"$m19"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc10bco=\).*/\1'"$m20"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc10pco=\).*/\1'"$m21"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc11bco=\).*/\1'"$m22"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc11pco=\).*/\1'"$m23"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc12bco=\).*/\1'"$m24"'/m;P;d' $dirn
  sudo sed -i '/^\[/h;G;/Set '"$1"'/s/\(tbc12pco=\).*/\1'"$m25"'/m;P;d' $dirn
	

echo "Saved CS"
sudo mount -o remount,ro /

