#inherit ubuntu node docker
FROM archlinux:latest

#update repositories and upgrade dependencies
RUN pacman -Syy
RUN pacman -Syu
RUN pacman -Sy bash git neofetch make python base-devel npm sudo

#copy the entire source
COPY . .

#install nodejs dependencies
RUN npm install

#run
CMD ["node","server"]
