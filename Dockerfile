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

RUN mkdir -p /zandronum/config && mkdir /zandronum/wads && \
mkdir /zandronum/iwads && mkdir /zandronum/srv-exec/ && /zandronum/templates/
ADD /config/ /zandronum/config/
ADD /srv-exec/ /zandronum/serv-exec/
ADD /templates/ /zandronum/templates/

CMD ["/zandronum/srv-exec/summon.sh"]
ENTRYPOINT ["/zandronum/srv-exec/summon"]
EXPOSE 10666
