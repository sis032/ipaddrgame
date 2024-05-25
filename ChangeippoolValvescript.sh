#! /bin/sh

#check git
if ! git --version &> /dev/null
then
    apt update
    apt install -y git
fi


 cd /tmp/
 git clone https://github.com/sis032/ipaddrgame.git
 chmod -R a+x ipaddrgame/
 cd ipaddrgame/
 ./ChangeippoolValve.sh
rm -rf /tmp/ipaddrgame