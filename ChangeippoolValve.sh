#! /bin/sh

#Finland#

rm /tmp/testfinland.txt
nmap -sU -p 27015-27025 -v  37.27.120.0/24 65.109.17.0/24 --open | grep "Discovered open port" | cut -d ' ' -f 6 | sort -u | tr '\n' ',' | head -c -1 >> /tmp/testfinland.txt
chmod 777 /tmp/testfinland.txt
server=`cat /tmp/testfinland.txt`
echo $server

if [ ! -z "$server" ]
then

/usr/bin/expect <<EOD

spawn mysql -u root -p
expect "Enter password:"
send "\r"
expect ">"
send "UPDATE \`zabbix\`.\`drules\` SET \`iprange\`='$server' WHERE  \`name\`='Valve Finland';\r";
send "quit;\r"
expect eof
EOD

fi
sleep 2
unset server


#Germany

rm /tmp/testfrankfurt.txt
nmap -sU -p 27015-27025 -v  155.133.226.0/24 155.133.250.0/24 162.254.197.0/24 --open | grep "Discovered open port" | cut -d ' ' -f 6 | sort -u | tr '\n' ',' | head -c -1 >> /tmp/testfrankfurt.txt
chmod 777 /tmp/testfrankfurt.txt
server=`cat /tmp/testfrankfurt.txt`
echo $server

if [ ! -z "$server" ]
then

/usr/bin/expect <<EOD

spawn mysql -u root -p
expect "Enter password:"
send "\r"
expect ">"
send "UPDATE \`zabbix\`.\`drules\` SET \`iprange\`='$server' WHERE  \`name\`='Valve Frankfurt';\r";
send "quit;\r"
expect eof
EOD

fi
sleep 2
unset server


#Poland

rm /tmp/testpoland.txt
nmap -sU -p 27015-27025 -v  155.133.230.0/24 --open | grep "Discovered open port" | cut -d ' ' -f 6 | sort -u | tr '\n' ',' | head -c -1 >> /tmp/testpoland.txt
chmod 777 /tmp/testpoland.txt
server=`cat /tmp/testpoland.txt`
echo $server

if [ ! -z "$server" ]
then

/usr/bin/expect <<EOD

spawn mysql -u root -p
expect "Enter password:"
send "\r"
expect ">"
send "UPDATE \`zabbix\`.\`drules\` SET \`iprange\`='$server' WHERE  \`name\`='Valve Poland';\r";
send "quit;\r"
expect eof
EOD
fi
sleep 2
unset server



#Sweden

rm /tmp/testsweden.txt
nmap -sU -p 27015-27025 -v  155.133.252.0/24 162.254.198.0/24 --open | grep "Discovered open port" | cut -d ' ' -f 6 | sort -u | tr '\n' ',' | head -c -1 >> /tmp/testsweden.txt
chmod 777 /tmp/testsweden.txt
server=`cat /tmp/testsweden.txt`
echo $server

if [ ! -z "$server" ]
then

/usr/bin/expect <<EOD

spawn mysql -u root -p
expect "Enter password:"
send "\r"
expect ">"
send "UPDATE \`zabbix\`.\`drules\` SET \`iprange\`='$server' WHERE  \`name\`='Valve Sweden';\r";
send "quit;\r"
expect eof
EOD

fi
sleep 2
