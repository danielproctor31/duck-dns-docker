# duck-dns-docker

Docker setup for https://www.duckdns.org/

Create a .env file in the root with:
```
DOMAINS=
TOKEN=
IP=
CRON_INTERVAL=*/5 * * * *
```
- DOMAINS - a csv of your duckdns domains to update.
- TOKEN - Your auth token provided by duckdns.
- IP - The ipv4 address which you want the dns to resolve to. If this is left blank it will use your public ip.

Start with `docker-compose up -d`
