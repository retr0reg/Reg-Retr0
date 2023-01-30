#!/bin/bash
#Author: Retr0

gre='\033[34m'
blu='\033[36m'
yel='\033[33m'
end='\033[0m'

echo -e "${blu}[!] Those command will update grub, you sure to do this?"
echo -e "${gre}y = Yes, n = No  (y/n): ${end}\c"
read choice1

if test $choice1 = 'y'
then
    # sudo update-grub
    # sudo systemctl set-default multi-user.target
    echo -e "${gre}[+]${end} Now Reboot is required, please run: "sudo reboot" command by yourself"
else
    echo -e "${yel}[-]FAILED!!!!${end}"
    exit
fi