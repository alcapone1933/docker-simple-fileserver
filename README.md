# Simple Fileserver Docker
[![Build Status](https://shields.cosanostra-cloud.de/drone/build/alcapone1933/docker-simple-fileserver?logo=drone&server=https%3A%2F%2Fdrone.docker-for-life.de)](https://drone.docker-for-life.de/alcapone1933/docker-simple-fileserver)
[![Build Status Branch Master](https://shields.cosanostra-cloud.de/drone/build/alcapone1933/docker-simple-fileserver/master?logo=drone&label=build%20%5Bbranch%20master%5D&server=https%3A%2F%2Fdrone.docker-for-life.de)](https://drone.docker-for-life.de/alcapone1933/docker-simple-fileserver/branches)
[![Docker Pulls](https://shields.cosanostra-cloud.de/docker/pulls/alcapone1933/simple-fileserver?logo=docker&logoColor=blue)](https://hub.docker.com/r/alcapone1933/simple-fileserver/tags)
![Docker Image Version (latest semver)](https://shields.cosanostra-cloud.de/docker/v/alcapone1933/simple-fileserver?sort=semver&logo=docker&logoColor=blue&label=dockerhub%20version)

Simple fileserver does what it says, it's a Docker container for the simple http Python 3 server.


##  Use

### Docker CLI

```bash
docker run -d \
-p 8080:8000 \
--restart always \
--name simple-fileserver \
-v /path/to/your/folder:/app \
alcapone1933/simple-fileserver:latest
```

### Docker Compose
```yaml
version: "3.9"

services:
  fileserver:
    image: alcapone1933/simple-fileserver:latest
    container_name: simple-fileserver
    restart: always
    volumes:
      - /path/to/your/folder:/app
      # - data:/app
    ports:
      - 8080:8000      
# volumes:
  # data:
    # name: simple-fileserver_data
```

* * *

## Volume params

| Name       | Value       | Example                      |
|------------|-------------|------------------------------|
|  Data      | volume      | simple-fileserver_data:/app  |