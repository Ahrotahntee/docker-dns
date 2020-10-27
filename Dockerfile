FROM alpine:latest
WORKDIR /srv
RUN apk --no-cache add dnsmasq wget && wget https://github.com/jwilder/docker-gen/releases/download/0.7.3/docker-gen-alpine-linux-amd64-0.7.3.tar.gz
RUN tar xvzf docker-gen-alpine-linux-amd64-0.7.3.tar.gz && chmod +x docker-gen && rm docker-gen-alpine-linux-amd64-0.7.3.tar.gz && mv docker-gen /bin/docker-gen
ADD entrypoint.sh /entrypoint.sh
ADD docker-gen.tmpl /srv/docker-gen.tmpl
ENTRYPOINT ["/entrypoint.sh"]
