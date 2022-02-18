#!/bin/sh
date=`date +%s%N`

curl 'http://172.19.0.254:8090/login.xml' \
-X 'POST' \
-H 'Pragma: no-cache' \
-H 'Accept-Language: en-US,en;q=0.9' \
-H 'Accept-Encoding: gzip, deflate' \
-H 'Cache-Control: no-cache' \
-H 'Origin: http://172.19.0.254:8090' \
-H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Safari/605.1.15' \
-H 'Connection: keep-alive' \
-H 'Referer: http://172.19.0.254:8090/' \
--data "mode=191&username=$1&password=$2&a=$(($date / 1000000))&producttype=0"
