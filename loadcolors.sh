#!/bin/bash
############################################################
#  Get  Mode from /etc/mmdvmhost                           #
#  $1 1-6 Select Mode to get status of                     #
#                                                          #
#  Returns the status Enable=0 or 1                        #
#                                                          #
#  KF6S                                        09-01-2019  #
############################################################
set -o errexit
set -o pipefail
echo "Load Test Color Set $1" > /home/pi-star/LoadTest.txt

dirn=/home/pi-star/ColorDB.txt

                m1=$(sed -nr "/^\[Set $1\]/ { :l /^tbc1bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m2=$(sed -nr "/^\[Set $1\]/ { :l /^tbc1pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m3=$(sed -nr "/^\[Set $1\]/ { :l /^tbc2bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m4=$(sed -nr "/^\[Set $1\]/ { :l /^tbc2pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m5=$(sed -nr "/^\[Set $1\]/ { :l /^tbc3bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m6=$(sed -nr "/^\[Set $1\]/ { :l /^tbc3pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m7=$(sed -nr "/^\[Set $1\]/ { :l /^tbc4bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m8=$(sed -nr "/^\[Set $1\]/ { :l /^tbc4pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m9=$(sed -nr "/^\[Set $1\]/ { :l /^tbc5bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m10=$(sed -nr "/^\[Set $1\]/ { :l /^tbc5pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m11=$(sed -nr "/^\[Set $1\]/ { :l /^tbc6bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m12=$(sed -nr "/^\[Set $1\]/ { :l /^tbc6pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m13=$(sed -nr "/^\[Set $1\]/ { :l /^tbc7bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m14=$(sed -nr "/^\[Set $1\]/ { :l /^tbc7pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m15=$(sed -nr "/^\[Set $1\]/ { :l /^tbc8bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m16=$(sed -nr "/^\[Set $1\]/ { :l /^tbc8pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)

                m17=$(sed -nr "/^\[Set $1\]/ { :l /^tbc9bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m18=$(sed -nr "/^\[Set $1\]/ { :l /^tbc9pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m19=$(sed -nr "/^\[Set $1\]/ { :l /^tbc10bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m20=$(sed -nr "/^\[Set $1\]/ { :l /^tbc10pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m21=$(sed -nr "/^\[Set $1\]/ { :l /^tbc11bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m22=$(sed -nr "/^\[Set $1\]/ { :l /^tbc11pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m23=$(sed -nr "/^\[Set $1\]/ { :l /^tbc12bco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
                m24=$(sed -nr "/^\[Set $1\]/ { :l /^tbc12pco[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)

echo "$m1|$m2|$m3|$m4|$m5|$m6|$m7|$m8|$m9|$m10|$m11|$m12|$m13|$m14|$m15|$m16|$m17|$m18|$m19|$m20|$m21|$m22|$m23|$m24|"

echo "$m1|$m2|$m3|$m4|$m5|$m6|$m7|$m8|$m9|$m10|$m11|$m12|$m13|$m14|$m15|$m16|$m17|$m18|$m19|$m20|$m21|$m22|$m23|$m24|" >> /home/pi-star/LoadTest.txt


