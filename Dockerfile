FROM ubuntu:16.04
RUN apt-add-repository 'deb http://debian.drdteam.org/ stable multiverse'
RUN wget -O - http://debian.drdteam.org/drdteam.gpg | sudo apt-key add -
RUN apt-get update && apt-get upgrade
RUN apt-get install zandronum

RUN mkdir /zandronum && mkdir /zandronum/wads && mkdir /zandronum/iwads
ADD /config/ /zandronum/config/
ADD /srv-exec/ /zandronum/serv-exec/
ADD /templates/ /zandronum/templates/

CMD ["/zandronum/srv-exec/summon.sh"]
ENTRYPOINT ["/zandronum/srv-exec/summon"]
