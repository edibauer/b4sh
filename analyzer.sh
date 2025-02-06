#!/bin/bash

# Author : edibauer

# Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT

function ctrl_c() {
    echo -e "\n${redColour}[!] Exiting...${endColour}"
    tput cnorm ; exit 1 # return cursor
}

# sleep 12

# Global variables
unconfirmed_trasnacions="https://www.blockchain.com/es/explorer/mempool/btc"
inspect_transaction_url="https://www.blockchain.com/es/explorer/transactions/btc/"
inspect_address_url="https://www.blockchain.com/es/explorer/transactions/btc/"


