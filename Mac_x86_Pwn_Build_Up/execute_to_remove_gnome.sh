#!/bin/bash
#Author: Retr0

gre='\033[34m'
blu='\033[36m'
yel='\033[33m'
end='\033[0m'

echo -e "${blu}[!] Those command required you to update apt, have you done this yet?"
echo -e "${gre}y = Yes, n = No  (y/n): ${end}\c"
read choice1

if test $choice1 = 'n'
then
    echo -e "${blu}Updating Apt.......${end}"
    # sudo apt update
    echo -e "${blu}Please run the script again.${end}"
elif test $choice1 = 'y'
    echo -e "${blu}Continuing...${end} "
then
echo -e "\n${blu}Now we run will run commands that will remove your gnome (desktop envoirment) \n${gre}Are You sure? y = Yes, n = No  (y/n):${end}${end} \c"
read choice2
    if test $choice2 = 'y'
    then
        # sudo apt remove gnome-shell
        # sudo apt remove gnome
        # sudo apt autoremove
        # sudo apt purge gnome
        # sudo snap remove store
        # sudo snap remove gnome*
        # sudo apt remove snapd
        # sudo apt autoclean
        # sudo apt clean
        echo "finished."
    else
        echo -e "${yel}[-]FAILED!!!!${end}"
        exit
    fi
else
    echo -e "${yel}[-]FAILED!!!!${end}"
    exit
fi