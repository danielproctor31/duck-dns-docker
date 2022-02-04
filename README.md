# duck-dns-docker

Docker setup for https://www.duckdns.org/

Create a .env file in the root with:
```
DOMAINS=
TOKEN=
IP=
```
- DOMAINS - a csv of your duckdns domains to update.
- TOKEN - Your auth token provided by duckdns.
- IP - The ipv4 address which you want the dns to resolve to. If this is left blank it will use your public ip.

The cron frequency can be edited in the `cronconfig` file.

Start with `docker-compose up -d`
