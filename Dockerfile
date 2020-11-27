#inherit fedora docker
FROM fedora:latest


#update repositories and upgrade dependencies
RUN dnf upgrade -y
RUN dnf install -y bash \
                   git \
                   neofetch \
                   make \
                   python \
                   make \
                   automake \
                   gcc \
                   gcc-c++ \
                   kernel-devel \
                   nodejs \
                   sudo

#copy the entire source
COPY . .

#install nodejs dependencies
RUN npm install

#run
CMD ["node","server"]
