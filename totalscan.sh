#!/bin/bash

#cool logo with figlet/toilet
toilet -f bigmono9 -F gay -F border -F gay Total Scan
echo '      }-----------------------Version 1.0----------------------{'
echo '   }----------------------Coded BY Rohin Jain----------------------{'
# init
function pause(){
   read -p "$*"
}

printf 'Checking/installing required tools...\n\n'
xterm -fg green -bg black -e sudo apt-get install uniscan nmap nikto wpscan -y 
printf "Your distro has all necessary essential tools. Script can continue...\n\n"
pause 'Press [Enter] to continue...'

read -p "Enter Target Url : " Url


printf "01) Vulnerability Scan\n"
printf "02) Nmap Scan\n"
printf "03) NsLookup\n"
printf "04) Server Scanning\n"
printf "05) Wordpress Scanner\n"
read -p "Select Your Option : " Option




if [ $Option == 1 ] 
then 
echo 'Starting Uniscan'
pause 'Press [Enter] to Start'
figlet Uniscan
echo 'Press [ctrl + c] to exit anytime'
xterm -hold -fg blue -bg black -e uniscan -u $Url -qwedsgj

fi

if [ $Option == 2 ]

then
figlet Nmap
printf "1. Regular Scan\n"
printf "2. Quick Scan\n"
printf "3. Ping Scan\n"
printf "4. Intense Scan\n"
printf "5. Slow Comprehensive Scan\n"
echo 'Choose Nmap Scan : '
read Scan
 
 if [ $Scan == 1 ]
 then
 echo 'Starting Regular Scan'
 pause 'Press [Enter] to Start'
 figlet Regular Scan
 echo 'Press [ctrl + c] to exit anytime'
 xterm -hold -fg red -bg black -e nmap $Url 
 fi
 
 if [ $Scan == 2 ]
 then
 echo 'Starting Quick Scan'
 pause 'Press [Enter] to Start'
 figlet Quick Scan
 echo 'Press [ctrl + c] to exit anytime'
 xterm -hold -fg red -bg black -e nmap -T4 -F $Url
 fi
 
 if [ $Scan == 3 ]
 then
 echo 'Starting Ping Scan'
 pause 'Press [Enter] to Start'
 figlet Ping Scan
 echo 'Press [ctrl + c] to exit anytime'
 xterm -hold -fg red -bg black -e nmap -sn $Url
 fi
 
 if [ $Scan == 4 ]
 then
 echo 'Starting Intense Scan'
 pause 'Press [Enter] to Start'
 figlet Intense Scan
 echo 'Press [ctrl + c] to exit anytime'
 xterm -hold -fg red -bg black -e nmap -T4 -A -v $Url
 fi
 
 if [ $Scan == 5 ]
 then
 echo 'Starting Slow Comprehensive Scan'
 pause 'Press [Enter] to Start'
 figlet Slow Comprehensive Scan
 echo 'Press [ctrl + c] to exit anytime'
 xterm -hold -fg red -bg black -e nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script
 fi

fi


if [ $Option == 3 ]
then
echo 'Starting Nslookup'
pause 'Press [Enter] to Start'
figlet Nslookup
echo 'Press [ctrl + c] to exit anytime'
xterm -hold -fg black -bg white -e nslookup $Url
fi

if [ $Option == 4 ]
then
echo 'Starting Server Scanner'
pause 'Pause [Enter] to Start'
figlet Server Scanner
echo 'Press [ctrl + c] to exit antime'
xterm -hold -fg blue -bg black -e nikto -h $url
fi

if [ $Option == 5 ]
then
echo 'Starting Wordpress Scanner'
pause 'Pause [Enter] to Start'
figlet Wpscan
echo 'Press [ctrl + c] to exit anytime'
xterm -hold -fg blue -bg black -e wpscan --url $Url --verbose --no --stealthy
fi
