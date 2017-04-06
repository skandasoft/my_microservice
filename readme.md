node_build - to build the base node-alpine-onbuild  

### Development build  
1. nginx.conf - nginx configuration
2. Dockerfile
3. Dockerfile-nginx - nginx-alpine build
4. docker-compose.overide.yml (overrides the docker-compose.yml)
  `docker-compose up --build`

### Prod Build - prod directory
1. docker-compose.prod.yml (overrides the docker-compose.yml)
  `docker-compose -f docker-compose.yml -f docker-compose.prod.yml up --build -d`
