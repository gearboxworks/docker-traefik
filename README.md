![release](https://github.com/gearboxworks/docker-traefik/workflows/release/badge.svg?event=release)

![postgresql 1.7.20](https://img.shields.io/badge/postgresql-1.7.20-green.svg)

![Gearbox](https://github.com/gearboxworks/gearbox.github.io/raw/master/Gearbox-100x.png)

# postgresql Docker Container for Gearbox
This is the repository for the [postgresql](https://www.postgresql.org/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/gearbox).
It currently provides versions 1.7.20

## Supported tags and respective Dockerfiles

`1.7.20`, `1.7` _([1.7.20/DockerfileRuntime](https://github.com/gearboxworks/docker-postgresql/blob/master/1.7.20/DockerfileRuntime))_

## Using this container.
If you want to use this container as part of Gearbox, then use the Docker Hub method.
Or you can use the GitHub method to build and run the container.

## Using it from Docker Hub

### Links
(Docker Hub repo)[https://hub.docker.com/r/gearboxworks/postgresql/]

(Docker Cloud repo)[https://cloud.docker.com/swarm/gearboxworks/repository/docker/gearbox/postgresql/]

### Setup from Docker Hub
A simple `docker pull gearboxworks/postgresql` will pull down the latest version.

### Runtime from Docker Hub
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name postgresql-1.7.20 --restart unless-stopped --network gearboxnet -P gearboxworks/postgresql:1.7.20`

stop - Stop a Docker container.

`docker stop postgresql-1.7.20`

run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name postgresql-1.7.20 --network gearboxnet -P gearboxworks/postgresql:1.7.20`

shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name postgresql-1.7.20 -i -t --network gearboxnet -P gearboxworks/postgresql:1.7.20 /bin/bash`

rm - Remove the Docker container.

`docker container rm postgresql-1.7.20`

## Using it from GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/docker-postgresql.git`

### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for Gearbox postgresql). Push all versions from the base directory or specific versions from each directory.

### Runtime from GitHub repo
When you `cd` into a version directory you can also perform a few more actions.

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.

