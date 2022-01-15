# DUCK-DNS-DOCKER

Docker setup for https://www.duckdns.org/

Create a .env file in the root with:

```
DOMAINS=
TOKEN=
IPURL=
```
- DOMAINS - a csv of your duckdns domains to update.
- TOKEN - Your auth token provided by duckdns.
- IPURL - should be a site that returns your public ipv4 address. For example ifconfig.me/ip

The cron frequency can be edited in the `cronconfig` file.

Start with `docker-compose up -d`
