#!/bin/sh
sudo cat /var/log/nginx/access.log |  alp ltsv  > ./alp_`date "+%Y%m%d%H%M%S"`.log
