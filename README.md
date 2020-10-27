# docker-dns
## Synopsis
This container makes docker's internal DNS available on a lan for use with containers that are routable from the local network.

## Usage
`docker run --network <name> -v /var/run/docker.sock:/var/run/docker.sock ahrotahntee/docker-dns:latest -s <domain>`

The -s parameter specifies the dns suffix to apply to container names.

