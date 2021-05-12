#inherit alpine docker
FROM node:alpine3.10


#update repositories and upgrade dependencies
RUN apk update
RUN apk add bash \
            curl \
            git \
            neofetch \
            make \
            python3 \
            py3-pip \
            make \
            automake \
            gcc \
            g++ \
            linux-headers \
            wget

#copy the entire source
COPY . .

RUN npm install

#finalization
CMD ["bash","config.sh","&&","bash","start.sh"]
