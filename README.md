# duck-dns-docker

Docker setup for https://www.duckdns.org/

Create a .env file in the root with:
```
DOMAINS=
TOKEN=
```
- DOMAINS - a csv of your duckdns domains to update.
- TOKEN - Your auth token provided by duckdns.

The cron frequency can be edited in the `cronconfig` file.

Start with `docker-compose up -d`
