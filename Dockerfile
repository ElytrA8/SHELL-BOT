#inherit alpine docker
FROM node:alpine3.10


#update repositories and upgrade dependencies
RUN apk update
RUN apk add bash \
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
            wget

#copy the entire source
COPY . .

#run
CMD ["bash","start.sh"]
