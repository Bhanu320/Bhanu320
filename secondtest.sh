#!/bin/bash
#set -x -e
read -p "Please enter the user name:" USER_NAME
PASSWORD=$(curl -sL https://helloacm.com/api/random/?n=14)
#read -s -p "Please enter the password:" USER_PASS
#useradd -m ${USER_NAME} -p ${PASSWORD}
useradd -m ${USER_NAME}
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
echo "The Username is ${USER_NAME} & Password is ${PASSWORD}"

