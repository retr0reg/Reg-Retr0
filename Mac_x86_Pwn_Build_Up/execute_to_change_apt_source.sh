#!/bin/bash
#Author: Retr0

gre='\033[34m'
blu='\033[36m'
yel='\033[33m'
<<<<<<< HEAD
red='\033[31m'
end='\033[0m'

echo -e "${red}[!] Those command only works in Ubuntu 20.04, Do you understand this?${end}"
echo -e "${gre}y = Yes, n = No  (y/N): ${end}\c"
read choice0
echo -e "${blu}\n[!] Those command required you to change Apt source, You sure to do this?${end}"
echo -e "${gre}y = Yes, n = No  (y/N): ${end}\c"
read choice1

if test $choice1 = 'y' && test $choice0 = 'y' 
=======
end='\033[0m'


echo -e "${blu}[!] Those command required you to change Apt source, You sure to do this?"
echo -e "${gre}y = Yes, n = No  (y/n): ${end}\c"
read choice1

if test $choice1 = 'y'
>>>>>>> 🔥 Added cool stuff
then
    echo -e "${blu}[*]Backup Apt Source.....${end}"
    sudo cp /etc/apt/sources.list /etc/apt/sources_copy.list
    echo -e "${blu}[*]Clearing Apt List.....${end}"
    sudo echo "" > /etc/apt/sources.list
    APT_LIST=`cat apt_source.list`
    echo -e "${blu}[*]Changing Apt List.....${end}"
<<<<<<< HEAD
    sudo echo "${APT_LIST}" > /etc/apt/sources.list
    echo -e "${blu}[*]Success!!!!${end}"
=======
    sudo echo "${APT_LIST}" > etc/apt/sources.list
    echo -e "${blu}[*]Apt update Success!!!!${end}"
>>>>>>> 🔥 Added cool stuff
else
    echo -e "${yel}[-]FAILED!!!!${end}"
    exit
fi
