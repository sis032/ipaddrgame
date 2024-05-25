#! /bin/sh

#check git
if ! git --version &> /dev/null
then
    echo "git не установлен. Установка git..."
    apt update
    apt install -y git
else
    echo "git уже установлен."
fi


 cd /tmp/