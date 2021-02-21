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

sudo sed -nr "/^\[Default\]/ { :l /^ColorSet[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" /usr/local/etc/Nextion_Support/ColorDB.txt



