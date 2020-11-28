#inherit Ubuntu docker
FROM ubuntu:latest

#locales ref:-[https://hub.docker.com/_/ubuntu]
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

#update repositories and upgrade dependencies
RUN apt update
RUN apt install -y --no-install-recommends apt-utils \
                                           automake \
                                           bash \
                                           build-essential \
                                           curl \
                                           git \
                                           neofetch \
                                           nodejs \
                                           npm \
                                           make \
                                           python \
                                           make \
                                           gcc \
                                           g++ \
                                           sudo \
                                           wget

#copy the entire source
COPY . .

#install nodejs dependencies
RUN npm install

#run
CMD ["node","server"]
