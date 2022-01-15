FROM alpine:latest

# Create newman dir
RUN mkdir /duckdns
WORKDIR /duckdns

# Copy files
COPY run.sh run.sh
COPY cronconfig cronconfig

# Install dos2unix
RUN apk update \
    apk --no-cache add dos2unix
RUN apk add curl

# ensure scripts are using correct line endings
RUN dos2unix "run.sh"

# Set permissions
RUN chmod 0644 "cronconfig"
RUN chmod 0744 "run.sh"

## setup cron configs
RUN crontab "cronconfig"

# start container with crond
CMD ["crond", "-f"]
