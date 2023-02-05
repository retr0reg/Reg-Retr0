#!/bin/bash
#Author: Retr0

gre='\033[34m'
blu='\033[36m'
yel='\033[33m'
end='\033[0m'


echo -e "${blu}[!] Those command required you to change Apt source, You sure to do this?"
echo -e "${gre}y = Yes, n = No  (y/n): ${end}\c"
read choice1

if test $choice1 = 'y'
then
    echo -e "${blu}[*]Backup Apt Source.....${end}"
    sudo cp /etc/apt/sources.list /etc/apt/sources_copy.list
    echo -e "${blu}[*]Clearing Apt List.....${end}"
    sudo echo "" > /etc/apt/sources.list
    APT_LIST=`cat apt_source.list`
    echo -e "${blu}[*]Changing Apt List.....${end}"
    sudo echo "${APT_LIST}" > /etc/apt/sources.list
    echo -e "${blu}[*]Success!!!!${end}"
else
    echo -e "${yel}[-]FAILED!!!!${end}"
    exit
fi
