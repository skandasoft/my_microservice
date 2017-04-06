#express-alpine
FROM node-alpine-onbuild
# ONBUILD VOLUME /usr/src/app

RUN npm install -g && npm cache clean
# ENV NODE_PATH /usr/lib/node_modules/my-microservice/node_modules
#FROM skandasoft/node-alpine-onbuild
# docker run -d -p 80:80 -v ${pwd}:/usr/src/app express-alpine
# docker run -it -p 80:80 -v %cd%:/usr/src/app express-alpine sh (if issues)
