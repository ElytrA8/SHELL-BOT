#inherit ubuntu node docker
FROM elytra8/shellbotprebuilt:latest

#locales ref:- https://hub.docker.com/_/ubuntu
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

#tz hack
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata

#update repositories and upgrade dependencies
RUN apt update
RUN apt install -y bash git neofetch make python build-essential nodejs npm sudo

#copy the entire source
COPY . .

#install nodejs dependencies
RUN npm install

#run
CMD ["node","server"]
