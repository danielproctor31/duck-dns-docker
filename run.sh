#!/bin/sh

echo "getting ip from $IPURL"
IP=$(curl $IPURL)
echo "IP = $IP"

echo "Updating ip for domains: $DOMAINS"
echo "$(curl "https://www.duckdns.org/update?domains=$DOMAINS&token=$TOKEN&ip=$IP")"
