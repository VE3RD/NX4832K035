#!/bin/bash
############################################################
#  Get  Mode from /etc/mmdvmhost                           #
#  $1 1-6 Select Mode to get status of                     #
#                                                          #
#   $1 Set #						   #
#   $2 Group #						   #
#                                                          #
#  VE3RD                                        2021-01-30 #
############################################################
set -o errexit
set -o pipefail

sudo mount -o remount,rw /
echo "Load Test Color Set $1 Group $2" > /home/pi-star/LoadTest.txt

dirn=/usr/local/etc/Nextion_Support/ColorDB.txt
if [ "$2" = "1" ]; then

                m1=$(sed -nr "/^\[Set $1\]/ { :l /^tbc1bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m2=$(sed -nr "/^\[Set $1\]/ { :l /^tbc1pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m3=$(sed -nr "/^\[Set $1\]/ { :l /^tbc2bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m4=$(sed -nr "/^\[Set $1\]/ { :l /^tbc2pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m5=$(sed -nr "/^\[Set $1\]/ { :l /^tbc3bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m6=$(sed -nr "/^\[Set $1\]/ { :l /^tbc3pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m7=$(sed -nr "/^\[Set $1\]/ { :l /^tbc4bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m8=$(sed -nr "/^\[Set $1\]/ { :l /^tbc4pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m0="1"
		echo "1 $m1:$m2|$m3:$m4|$m5:$m6|$m7:$m8" 
fi
if [ "$2" = "2" ]; then

                m1=$(sed -nr "/^\[Set $1\]/ { :l /^tbc5bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m2=$(sed -nr "/^\[Set $1\]/ { :l /^tbc5pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m3=$(sed -nr "/^\[Set $1\]/ { :l /^tbc6bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m4=$(sed -nr "/^\[Set $1\]/ { :l /^tbc6pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m5=$(sed -nr "/^\[Set $1\]/ { :l /^tbc7bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m6=$(sed -nr "/^\[Set $1\]/ { :l /^tbc7pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m7=$(sed -nr "/^\[Set $1\]/ { :l /^tbc8bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m8=$(sed -nr "/^\[Set $1\]/ { :l /^tbc8pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m0="2"
		echo "2 $m1:$m2|$m3:$m4|$m5:$m6|$m7:$m8"
fi
if [ "$2" = "3" ]; then
                m1=$(sed -nr "/^\[Set $1\]/ { :l /^tbc9bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m2=$(sed -nr "/^\[Set $1\]/ { :l /^tbc9pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m3=$(sed -nr "/^\[Set $1\]/ { :l /^tbc10bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m4=$(sed -nr "/^\[Set $1\]/ { :l /^tbc10pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m5=$(sed -nr "/^\[Set $1\]/ { :l /^tbc11bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m6=$(sed -nr "/^\[Set $1\]/ { :l /^tbc11pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m7=$(sed -nr "/^\[Set $1\]/ { :l /^tbc12bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m8=$(sed -nr "/^\[Set $1\]/ { :l /^tbc12pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m0="3"
		echo "3 $m1:$m2|$m3:$m4|$m5:$m6|$m7:$m8"

fi

echo "$m1:$m2|$m3:$m4|$m5:$m6|$m7:$m8" >> /home/pi-star/LoadTest.txt

sudo mount -o remount,ro /


