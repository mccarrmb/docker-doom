FROM ubuntu:20.04

# Default environment variables
ENV DEBIAN_FRONTEND noninteractive 
ENV IWAD doom1.wad
ENV CONFIG default.cfg
ENV SERVER_NAME docker-doom
ENV START_MAP E1M1

# Update the OS
RUN apt-get update --yes
RUN apt-get upgrade --yes

# Helper libs for adding PPAs
RUN apt-get install --yes dialog apt-utils software-properties-common wget

# Specifically add the Zandronum repo and install the application
RUN wget -O - http://debian.drdteam.org/drdteam.gpg | apt-key add -
RUN apt-add-repository 'deb https://debian.drdteam.org stable multiverse'
RUN apt-get update --yes 
RUN apt-get upgrade --yes
RUN apt-get install --yes --quiet libsdl-image1.2 zandronum 

# Stop any firewall hijinx
#RUN ufw disable

# Create a non-privileged user
RUN useradd -ms /bin/bash zandronum

# Build the application directory and add files
RUN mkdir /home/zandronum/config && \
  mkdir /home/zandronum/wad/ && \
  mkdir /home/zandronum/iwad/ && \
  mkdir /home/zandronum/bin/ && \
  mkdir /home/zandronum/logs/
COPY /config/ /home/zandronum/config/
COPY /bin/ /home/zandronum/bin/
COPY /player/ /home/zandronum/player/
COPY /iwad/ /home/zandronum/iwad/
COPY /wad/ /home/zandronum/wad/

# Permissions shenanighans for our non-privileged user
USER root
RUN chown -R zandronum:zandronum /home/zandronum
USER zandronum
WORKDIR /home/zandronum
RUN chmod +x /home/zandronum/bin/summon.bash

CMD ["/home/zandronum/bin/summon.bash"]
ENTRYPOINT ["/home/zandronum/bin/summon.bash"]
EXPOSE 10666
