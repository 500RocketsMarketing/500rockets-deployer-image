FROM debian:stable-slim

ENV DEBIAN_FRONTEND noninteractive

# install deps 
RUN apt-get -y update && apt-get install -y openssh-client ca-certificates openssl

# slim down image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*
