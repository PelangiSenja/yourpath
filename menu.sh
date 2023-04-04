#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
## Foreground
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
#Domain & IPVPS
domain=$(cat /root/domain)
IPVPS=$(curl -s ipinfo.io/ip)
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# RAM Info
tram=$(free -m | awk 'NR==2 {print $2}')
uram=$(free -m | awk 'NR==2 {print $3}')
# Total BANDWIDTH
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $9" "substr ($10, 1, 1)}')"
echo ""
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "      ${WB}Multiport Websocket Autoscript By PelangiSenja${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "               ${WB}»»» Server Information «««${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}♦️${NC} ${YB}OS      :  "$(hostnamectl | grep "Operating System" | cut -d ' ' -f5-) ${NC}         
echo -e "  ${RB}♦️${NC} ${YB}KERNEL  :  $(uname -r) ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}UPTIME  :  $uptime ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}RAM     :  $uram MB / $tram MB ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}DOMAIN  :  $domain ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}IPVPS   :  $IPVPS ${NC} "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                    ${WB}»»» XRAYS Menu «««${NC}          "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}01.${NC} ${YB}XRAY VMESS WS${NC}"
echo -e "  ${RB}02.${NC} ${YB}XRAY VLESS WS${NC}"
echo -e "  ${RB}03.${NC} ${YB}XRAY TROJAN WS${NC}"
echo -e "  ${RB}04.${NC} ${YB}XRAY TROJAN XTLS${NC}"
echo -e "  ${RB}05.${NC} ${YB}XRAY TROJAN TCP${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                     ${WB}»»» VPS Menu «««${NC}                 "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}06.${NC} ${YB}INSTALL ADS BLOCK ${NC}"
echo -e "  ${RB}07.${NC} ${YB}ADS BLOCK MENU ${NC}"
echo -e "  ${RB}08.${NC} ${YB}DNS CHANGER ${NC}"
echo -e "  ${RB}09.${NC} ${YB}NETFLIX CHECKER ${NC}"
echo -e "  ${RB}10.${NC} ${YB}CHANGE DOMAIN ${NC}"
echo -e "  ${RB}11.${NC} ${YB}RENEW CERT XRAYS ${NC}"
echo -e "  ${RB}12.${NC} ${YB}CHECK VPN STATUS ${NC}"
echo -e "  ${RB}13.${NC} ${YB}CHECK VPN PORT ${NC}"
echo -e "  ${RB}14.${NC} ${YB}RESTART VPN SERVICE ${NC}"
echo -e "  ${RB}15.${NC} ${YB}SPEEDTEST ${NC}"
echo -e "  ${RB}16.${NC} ${YB}CHECK CPU & RAM ${NC}"
echo -e "  ${RB}17.${NC} ${YB}CHECK BANDWIDTH ${NC}"
echo -e "  ${RB}18.${NC} ${YB}BACKUP ${NC}"
echo -e "  ${RB}19.${NC} ${YB}RESTORE ${NC}"
echo -e "  ${RB}20.${NC} ${YB}REBOOT ${NC}"
echo -e "  ${RB}21.${NC} ${YB}EXIT ${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                  ${WB}»»» Total Bandwith «««${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Daily Data Usage    : $ttoday ${NC}"
echo -e "  ${RB}♦️${NC} ${YB}Monthly Data Usage  : $tmon ${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo ""
read -p "Select From Options [ 1 - 22 ] : " menu
case $menu in
1)
clear
menu-ws
;;
2)
clear
menu-vless
;;
3)
clear
menu-tr
;;
4)
clear
menu-xrt
;;
5)
clear
menu-xtr
;;
6)
clear
ins-helium
;;
8)
clear
helium
;;
9)
clear
dns
;;
10)
clear
nf
;;
11)
clear
add-host
;;
12)
clear
certxray
;;
13)
clear
status
;;
14)
clear
info
;;
15)
clear
restart
;;
16)
clear
speedtest
;;
17)
clear
htop
;;
18)
clear
exit
;;
19)
clear
backup
;;
20)
clear
restore
;;
21)
clear
reboot
;;
22)
clear
vnstat
;;
*)
clear
menu
;;
esac