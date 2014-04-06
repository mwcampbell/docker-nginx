# Docker nginx

This is a small, statically linked build of nginx for Docker, based on [Docker musl base](https://github.com/mwcampbell/docker-muslbase).

## Building

Run the build-image.sh script in the top-level directory of your working copy as follows:

    ./build-image.sh username

Where `username` is the username you wish to use for your Docker image tags. This will often be your username on docker.io.
