#inherit ubuntu latest lsb docker
FROM ubuntu:focal

#update repositories and upgrade dependencies
RUN apt update
RUN apt install -y bash git neofetch make python build-essential nodejs npm sudo

#copy the entire source
COPY . .

#install nodejs dependencies
RUN npm install

#run
CMD ["node","server"]
