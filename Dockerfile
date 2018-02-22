FROM ubuntu:16.04

#Disable Upstart (not sure if 16.04 still has Upstart but whatever)
RUN dpkg-divert --local --rename --add /sbin/initctl && \
 ln -sf /bin/true /sbin/initctl && \
 ln -sf /bin/false /usr/sbin/policy-rc.d

#Update the OS
RUN apt-get update --yes
RUN apt-get upgrade --yes

#Specifically add the Zandronum repo and install the application
RUN apt-add-repository 'deb http://debian.drdteam.org/ stable multiverse'
RUN wget -O - http://debian.drdteam.org/drdteam.gpg | sudo apt-key add -
RUN apt-get update && apt-get upgrade
RUN apt-get install --yes --quiet libsdl-image1.2 zandronum 

#Create a non-privileged user
RUN useradd -ms /bin/bash zandronum
USER zandronum
WORKDIR /home/zandronum

#Build the application directory and add files
RUN mkdir /home/zandronum/config && \
  mkdir /home/zandronum/wads && \
  mkdir /home/zandronum/iwads && \
  mkdir /home/zandronum/bin/
ADD /config/ /home/zandronum/config/
ADD /bin/ /home/zandronum/bin/
ADD /iwads/ /home/zandronum/iwads/
ADD /pwads/ /home/zandronum/pwads/

CMD ["/home/zandronum/bin/summon.sh"]
ENTRYPOINT ["/home/zandronum/bin/summon.sh"]
EXPOSE 10666
