
# Ruby official container

https://hub.docker.com/_/ruby


Dockerfile  

```
FROM ruby:3.0
WORKDIR /usr/src/app
# CMD ["./your-daemon-or-script.rb"]
# ENV PORT 3000
# EXPOSE $PORT
ENTRYPOINT [ "/bin/bash" ]
```


Create the docker image
```
docker build -t ruby-image .
```

Create the Docker container
```
docker create --name ruby-server --publish 0.0.0.0:3000:3000 ruby-image
```

Start the container
This starts it and exits immediately (!!!)
```
docker start webdev-nutshell
```


Start the container (detached iteractive)
https://stackoverflow.com/a/31143261/446681
```
docker run -dit -p 8983:8983 --name ruby-server ruby-image
docker run -dit --publish 0.0.0.0:3000:3000 --name ruby-server ruby-image


```


SSH into the container
```
docker exec -it ruby-server /bin/bash
```


TODO: Port binding in docker is not working
See https://stackoverflow.com/questions/54940990/docker-cant-connect-to-container-exposed-port


# Docker build

https://docs.docker.com/engine/reference/commandline/build/

```
docker build - < Dockerfile

```


# VS Code Docker Extension
https://code.visualstudio.com/docs/devcontainers/containers
https://code.visualstudio.com/docs/devcontainers/tutorial
https://code.visualstudio.com/docs/devcontainers/create-dev-container



# Misc
```
docker stop your-container
docker rm your-container

# DANGER!!!
docker system prune -a -f
```


