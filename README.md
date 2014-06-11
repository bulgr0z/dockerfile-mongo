dockerfile-mongo
================

## Build the image
`$ docker build -t bulgroz/mongodb .`

## Run it with
`$ docker run -d -P --name mongodb bulgroz/mongodb`

This image exposes the `27017` port; see http://docs.docker.com/userguide/dockerlinks/ for usage. 
