# AIRFLOW VERSION 1.10.15 DOCKER IMAGE

## Requirements 


docker installed in your machine

# Instructions to use this 

1. build image: 
```bash
docker build . -f Dockerfile --pull --tag YOUR_IMAGE_TAG:1.0.0
```

2. Run new container: 
```bash
 docker run -it -p 8080:8080 YOUR_IMAGE_TAG:1.0.0
```