#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: ./switchConfigs.sh <config>"
    exit 1
fi

if [ "$1" = "origin" ]; then
echo "Switching to origin configs..."
sudo cp ./origin/nginx.conf.bak /etc/nginx/nginx.conf
sudo cp ./origin/my.cnf.bak /etc/mysql/conf.d/my.cnf
elif [ "$1" = "logs" ]; then
echo "Switching to logs configs..."
sudo cp ./nginx.conf.log /etc/nginx/nginx.conf
sudo cp ./my.cnf.log /etc/mysql/conf.d/my.cnf
else
echo "Usage: ./switchConfigs.sh <config>"
exit 1
fi

sudo service nginx restart
sudo service mysql restart

echo "Done."