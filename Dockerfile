#inherit fedora docker
FROM fedora:latest


#update repositories and upgrade dependencies
RUN dnf update
RUN dnf install -y bash \
                   git \
                   neofetch \
                   make \
                   python \
                   build-essential \
                   nodejs \
                   sudo

#copy the entire source
COPY . .

#install nodejs dependencies
RUN npm install

#run
CMD ["node","server"]
