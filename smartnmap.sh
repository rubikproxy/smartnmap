#!/usr/bin/env bash
echo "################################################################"
echo "      WELCOME TO SMARTNMAP PORT SCANNING TOOL"
echo "               coded by rubik-proxy"
echo "################################################################"

echo -e -n "Enter Your ip (or) domain here; "
read ip

echo -e -n "Which Scan do you want me to execute (TCP OR UDP);- "
read answer
        
        if [[ $answer = tcp ]] ; then
        echo -e -n  "now scanning TCP portocol using NMAP"
        echo
        echo
        nmap -vv -Pn $ip
        
        echo
        echo
        echo "scanning finished"
        
        elif [[ $answer = udp ]] ; then
        
        echo -e -n "now scanning UDP portocol using NMAP"
        echo
        echo
        nmap -vv -sU $ip

        echo
        echo
        echo "scanning finished"
else
        echo
        echo -e -n "exiting the tool"
fi
exit 0 ;