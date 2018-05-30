FROM debian

RUN apt-get update && apt-get -y -o APT::Install-Recommend=false \
    -o APT::Install-Suggests=false install tcpdump \ 
    ngrep nmap whois vim vim-common htop wget curl unzip screen openssh-client \
    net-tools hping3 dnsutils telnet netcat less bash-completion \
    python-pip python3-virtualenv python-virtualenv \
    python3 python3-pip php7.0-cli php7.0-json php7.0-curl ftp procps man-db && \
    apt-get clean && \
    useradd -d /home/user -m user
