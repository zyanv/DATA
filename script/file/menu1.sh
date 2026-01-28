#!/bin/bash
clear
red='\e[1;31m'
gr='\e[0;32m'
blue='\e[0;34m'
bb='\e[0;94m'
cy='\033[0;36m'
NC='\e[0m'
clear

today=`date -d "0 days" +"%Y-%m-%d"`

IPVPS=$(curl -s icanhazip.com)
DOMAIN=$(cat /etc/xray/domain)
cekxray="$(openssl x509 -dates -noout < /usr/local/etc/xray/xray.crt)"                                      
expxray=$(echo "${cekxray}" | grep 'notAfter=' | cut -f2 -d=)
xcore="$(/usr/local/bin/xray -version | awk 'NR==1 {print $2}')"

usersc=$(cat /etc/pass/accsess)

usrvl="$gr$(grep -o -i "###" /usr/local/etc/xray/vless.txt | wc -l)$NC"
usrovpn="$gr$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)$NC"

clear
echo -e  " ${z}╭══════════════════════════════════════════════════════════╮${NC}"
echo -e  " ${z}│$NC${f}    WELCOME TO  ZYANV LEGEND STORE AUTOSCRIPT PREMIUM      $NC${z}│$NC"
echo -e  " ${z}╰══════════════════════════════════════════════════════════╯${NC}"
echo -e  " ${z}══════════════════════════════════════════════════════════${NC}"
echo -e  " ${z}$NC$r ⇲ $NC$y ISP ${NC}           $Blue=$NC $IPVPS${NC}"
echo -e  " ${z}$NC$r ⇲ $NC$y Domain ${NC}        $Blue=$NC $DOMAIN${NC}"
echo -e  " ${z}$NC$r ⇲ $NC$y System OS ${NC}     $Blue=$NC `hostnamectl | grep "Operating System" | cut -d ' ' -f5-`"${NC}
echo -e  " ${z}$NC$r ⇲ $NC$y Kernal Version ${NC}        $Blue=$NC $DOMAIN${NC}"
echo -e  "  ${cy}XRAY CORE VERSION                : $xcore${NC}"
echo -e  "  ${cy}EXP DATE CERT XRAY               : $expxray${NC}"
echo -e  " ${wh}═════════════════════════════════════════════════════════════════${NC}"
echo -e  "       ${cy}PROTOCOL     SSH/OVPN      VLESS${NC}    "
echo -e  "       "${cy}TOTAL USER${NC}"      [$usrovpn]        [$usrvl]"
echo -e  " ${wh}═════════════════════════════════════════════════════════════════${NC}"
echo -e  " \033[30;5;47m                         ⇱ SSHWS/OVPN MENU ⇲                      \033[m"
echo -e  " ${wh}═════════════════════════════════════════════════════════════════${NC} "
echo -e  " ${wh}[ 01 ]${NC} CREATE NEW USER            ${wh}[ 06 ]${NC} LIST USER INFORMATION"
echo -e  " ${wh}[ 02 ]${NC} CREATE TRIAL USER          ${wh}[ 07 ]${NC} SET AUTO KILL LOGIN"
echo -e  " ${wh}[ 03 ]${NC} EXTEND ACCOUNT ACTIVE      ${wh}[ 08 ]${NC} DISPLAY USER MULTILOGIN"
echo -e  " ${wh}[ 04 ]${NC} DELETE ACTIVE USER         ${wh}[ 09 ]${NC} INSTALL SSHWS"
echo -e  " ${wh}[ 05 ]${NC} CHECK USER LOGIN"
echo -e  " ${wh}═════════════════════════════════════════════════════════════════${NC} "
echo -e  " \033[30;5;47m                         ⇱ XRAY MENU ⇲                           \033[m"       
echo -e  " ${wh}═════════════════════════════════════════════════════════════════${NC} " 
echo -e  " ${wh}[ 10 ]${NC} CREATE NEW USER            ${wh}[ 14 ]${NC}"" CHECK USER LOGIN"
echo -e  " ${wh}[ 11 ]${NC} CREATE TRIAL USER          ${wh}[ 15 ]${NC}"" LIST USER"
echo -e  " ${wh}[ 12 ]${NC} EXTEND ACCOUNT ACTIVE      ${wh}[ 16 ]${NC}"" RENEW XRAY CERTIFICATION"
echo -e  " ${wh}[ 13 ]${NC} DELETE ACTIVE USER"
echo -e  " ${wh}═════════════════════════════════════════════════════════════════${NC} "
echo -e  " \033[30;5;47m                         ⇱ SYSTEM MENU ⇲                         \033[m"      
echo -e  " ${wh}═════════════════════════════════════════════════════════════════${NC} "
echo -e  " ${wh}[ 17 ]${NC} ADD/CHANGE DOMAIN VPS      ${wh}[ 23 ]${NC} SPEEDTEST VPS"
echo -e  " ${wh}[ 18 ]${NC} CHANGE DNS SERVER          ${wh}[ 24 ]${NC} CHECK STREAM GEO LOCATION"
echo -e  " ${wh}[ 19 ]${NC} RESTART ALL SERVICE        ${wh}[ 25 ]${NC} DISPLAY SYSTEM INFORMATIONN"
echo -e  " ${wh}[ 20 ]${NC} CHECK RAM USAGE            ${wh}[ 26 ]${NC} SERVICE STATUS"
echo -e  " ${wh}[ 21 ]${NC} REBOOT VPS                 ${wh}[ 27 ]${NC} SOCKS WRAP                " 
echo -e  " ${wh}[ 22 ]${NC} UPDATE"             
echo -e  " ${wh}═════════════════════════════════════════════════════════════════${NC}" 
echo -e  " ${wh}[  0 ]${NC}" "${cy}EXIT MENU${NC}  "
echo -e  " ${wh}═════════════════════════════════════════════════════════════════${NC}"
echo -e  " ${wh}══════════════════════════════════${NC}"
echo -e  " SCRIPT VERSION : LIFETIME "
echo -e  " USED BY        : $usersc"
echo -e  " ${wh}══════════════════════════════════${NC}"
echo -e  "  "
echo -e "\e[1;31m"
read -p  "     Please select an option :  " menu
echo -e "\e[0m"
 case $menu in
  1)
  clear ; usernew
  ;;
  2)
  clear ; trial 
  ;;
  3)
  clear ; renew
  ;;
  4)
  clear ; hapus
  ;;
  5)
  clear ; cek
  ;;
  6)
  clear ; member
  ;;
  7)
  clear ; autokill
  ;;
  8)
  clear ; ceklim
  ;;
  9)
  clear ; ./install_ws_http.sh install
  ;;
  10)
  clear ; add-xvless
  ;;
  11)
  clear ; trial-xvless
  ;;
  12)
  clear ; renew-xvless
  ;;
  13)
  clear ; del-xvless
  ;; 
  14)
  clear ; cek-xvless
  ;;
  15)
  clear ; vless-list
  ;;
  16)
  clear ; recert-xray
  ;;    
  17)
  clear ; add-host
  ;;
  18)
  clear ; mdns
  ;;
  19)
  clear ; restart-service
  ;;
  20)
  clear ; ram
  ;;
  21)
  clear ; reboot
  ;;
  22)
  clear ; update
  ;;
  23)
  clear ; speedtest
  ;;
  24)
  clear ; nf
  ;;
  25)
  clear ; info
  ;;
  26)
  clear ; status
  ;;
  27)
  clear ; mwarp
  ;;
  0)
  sleep 0.5
  clear
  exit
  ;;
  *)
  echo -e "ERROR!! Please Enter an Correct Number"
  sleep 1
  clear
  menu
  ;;
  esac
