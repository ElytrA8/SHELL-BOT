#inherit alpine docker
FROM node:alpine3.10


#update repositories and upgrade dependencies
RUN apk update
RUN apk add -y bash \
               curl \
               git \
               neofetch \
               make \
               python \
               make \
               automake \
               gcc \
               g++ \
               linux-headers \
               sudo \
               wget

#copy the entire source
COPY . .

#install nodejs dependencies
RUN npm install

#run
CMD ["node","server"]
