FROM java:8
MAINTAINER kv0je01

#Install wget
RUN apt-get update && \
    apt-get -y install && \
    apt-get install -y wget

#Install Dropbox
RUN mkdir /usr/local/dropbox /Dropbox && \
    cd /usr/local/dropbox && \
    wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

RUN chmod +x /usr/local/dropbox /Dropbox

VOLUME ["/Dropbox"]

CMD ["/usr/local/dropbox/.dropbox-dist/dropboxd"]
