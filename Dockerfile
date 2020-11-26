#inherit ubuntu latest lab docker
FROM ubuntu:focal

#update repositories and upgrade dependencies
RUN apt update && sudo apt upgrade -y
RUN apt install -y git neofetch make python build-essential nodejs npm sudo

#copy the entire source
COPY . .

#install nodejs dependencies
RUN npm install

#run
CMD ["node","server"]
