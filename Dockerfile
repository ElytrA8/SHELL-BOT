#inherit alpine docker
FROM alpine:edge

RUN mkdir /shellbot && chmod 777 /shellbot
ENV PATH="/shellbot/bin:$PATH"
WORKDIR /shellbot

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
            nodejs \
            npm \
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
