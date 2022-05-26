# Simple Fileserver Docker
Simple fileserver does what it says, it's a Docker container for the simple http Python 3 server.

## Use

```bash
version: '3'

services:
  fileserver:
    image: alcapone1933/simple-fileserver:latest
    container_name: simple-fileserver
    restart: always
    volumes:
      - /path/to/your/folder:/app
    ports:
      - 8000:8000

```

