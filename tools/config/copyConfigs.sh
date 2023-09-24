#!/bin/sh

cp /etc/nginx/nginx.conf ./origin/nginx.conf.bak
sudo cp ./nginx.conf.log /etc/nginx/nginx.conf

cp /etc/mysql/conf.d/my.cnf ./origin/my.cnf.bak
sudo cp ./my.cnf.log /etc/mysql/conf.d/my.cnf