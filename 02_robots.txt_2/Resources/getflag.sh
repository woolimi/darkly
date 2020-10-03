# /bin/sh

if [ -z "$1" ]; then
	echo "Usage: sh getflag.sh [server_ip]";
	exit 1;
fi

rm -rf ./$1;
echo "downloading .hidden folder...";
wget -q -np -r -l 0 -A "README" -e robots=off "$1/.hidden/"
if [ $? -eq 0 ]; then
	echo "search flag...";
	cd ./$1;
	grep -rn ./ -e "[0-9]";
	if [ $? -eq 0 ]; then
		echo "Gotcha!";
	else
		echo "flag doesn't exist";
	fi
else
	echo "fail to download .hidden folder";
	exit 1;
fi