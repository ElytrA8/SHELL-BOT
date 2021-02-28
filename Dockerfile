#inherit archlinux docker
FROM archlinux/archlinux:base-20210203.0.15035

#update repositories and upgrade dependencies
RUN pacman -Syy --noconfirm

RUN pacman -Sy bash git neofetch make python base-devel npm sudo glibc --noconfirm

#copy the entire source
COPY . .

#install nodejs dependencies
RUN npm install

#run
CMD ["node","server"]
