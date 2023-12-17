# Creating a Docker container with Ruby on it

Create the docker image
```
docker build -t ruby-image .
```

Create the Docker container
```
docker create --name ruby-server --publish 3000:3000 ruby-image
```

Start the container
```
docker start ruby-server
```

SSH into the container
```
docker exec -it ruby-server /bin/bash
```


# VS Code Docker Extension
https://code.visualstudio.com/docs/devcontainers/containers
https://code.visualstudio.com/docs/devcontainers/tutorial
https://code.visualstudio.com/docs/devcontainers/create-dev-container

https://containers.dev/implementors/json_reference/
https://containers.dev/implementors/reference/

# Docker
Docker Hub https://hub.docker.com/_/ruby
Keep container running https://devopscube.com/keep-docker-container-running/

Start the container (detached iteractive)
https://stackoverflow.com/a/31143261/446681
```
docker run -dit -p 3000:3000 --name ruby-server ruby-image
```


# Sinatra and Puma
https://puma.io/puma/

# Misc
```
docker stop your-container
docker rm your-container

# DANGER!!!
docker system prune -a -f
```


favicon - https://favicon.io/