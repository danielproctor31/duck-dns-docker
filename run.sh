#!/bin/sh

echo "Updating ip for domains: $DOMAINS"
echo "$(curl "https://www.duckdns.org/update?domains=$DOMAINS&token=$TOKEN&ip=")"
