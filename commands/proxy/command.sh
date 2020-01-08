#!/bin/bash
help_function()
{
	echo "Here are options"
	echo "0. For removing proxy"
	echo "1. For mobile proxy if running"
	echo "2. IITJ proxy1"
	echo "3. IITJ proxy2"
}

flag=false
# host and port settings
HOST=
PORT=
if [[ $1 == '' ]];
then
	help_function
	exit
fi
if [[ $1 == '-h' ]];
then
	help_function
	exit
elif [[ $1 == '-s' || $1 == "status" ]];
then
	HOST=$(gsettings get org.gnome.system.proxy.http host)
	PORT="$(gsettings get org.gnome.system.proxy.http port)"
	MESSAGE="Proxy settings are ${HOST} : ${PORT}"
elif [ $1 == 0 ];
then
	gsettings set org.gnome.system.proxy mode 'none'
	MESSAGE="New proxy settings applied (None)"
elif [ $1 == 1 ];
then
	flag=true
	HOST=10.24.5.215
	PORT=4000
elif [ $1 == 2 ];
then
	flag=true
	HOST=172.17.0.10
	PORT=3128
elif [ $1 == 3 ];
then
	flag=true
	HOST=172.17.0.12
	PORT=3128
else
	help_function
fi

if [ $flag = true ];
then
	gsettings set org.gnome.system.proxy mode 'manual'
	gsettings set org.gnome.system.proxy.http host $HOST	
	gsettings set org.gnome.system.proxy.http port $PORT
	gsettings set org.gnome.system.proxy.https host $HOST	
	gsettings set org.gnome.system.proxy.https port $PORT
	#gsettings set org.gnome.system.proxy.ftp host $HOST	
	#gsettings set org.gnome.system.proxy.ftp port $PORT
	MESSAGE="New proxy settings applied $HOST : $PORT"
fi

echo $MESSAGE
notify-send "$MESSAGE"
