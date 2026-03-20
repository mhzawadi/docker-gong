# docker-gong
Gong the Gong

## Starting the container

You can use the docker run command:

```
docker run -p 8080:8080 mhzawadi/gong
```

Or with a compose file:

```
---
services:
  Dashboard:
    image: mhzawadi/gong
    ports:
      - "8080:8080"
    container_name: gong
```

## Options

- TITLE: the title on the page
- SUBTITLE: the text under the gong

```
---
services:
  Dashboard:
    image: mhzawadi/gong
    ports:
      - "8080:8080"
    container_name: gong
    environment:
      - TITLE="This is cool"
      - SUBTITLE="Please click the gong"

```
