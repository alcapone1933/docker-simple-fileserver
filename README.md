# Simple Fileserver Docker
Simple fileserver does what it says, it's a Docker container for the simple http Python 3 server.


##  Use

### Docker CLI

```bash
docker run -d \
-p 8080:8000 \
--restart always \
--name simple-fileserver \
-v /path/to/your/folder:/app
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

* * *

## Volume params

| Name       | Value       | Example                      |
|------------|-------------|------------------------------|
|  Data      | volume      | simple-fileserver_data:/app  |

