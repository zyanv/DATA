#!/bin/bash
clear
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'


NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/usr/local/etc/xray/vless.txt")
        if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
                clear
                echo ""
                echo "You have no existing clients!"
                exit 1
        fi

        clear
        echo -e "==============================="
        echo " VLESS USER LIST"
        echo -e "==============================="
        echo ""
        grep -E "^### " "/usr/local/etc/xray/vless.txt" | cut -d ' ' -f 2-4 | nl -s ') '
        echo " "
read -n 1 -s -r -p "Press any key to back on menu"
clear
menu
