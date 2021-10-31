FROM mcr.microsoft.com/windowsservercore:ltsc2019
LABEL maintainer="mccarrmb@github.com"
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

#Default environment variables
ENV IWAD C:\Users\zandronum\iwad\doom1.wad
ENV CONFIG C:\Users\zandronum\config\default.cfg
ENV START_MAP E1M1
ENV Z_VERSION 3.0

#Download Zandronum
RUN Invoke-WebRequest $('https://zandronum.com/downloads/zandronum{0}-win32-base.zip' -f $env:Z_VERSION) -OutFile 'zandronum.zip' -UseBasicParsing ; \
    Expand-Archive zandronum.zip -DestinationPath C:\ ; \
    Remove-Item zandronum.zip

#Create a non-privileged user
RUN useradd -ms /bin/bash zandronum
USER zandronum

#Build the application directory and add files
RUN mkdir C:\zandronum\config
RUN mkdir C:\zandronum\wad 
RUN mkdir C:\zandronum\iwad 
RUN mkdir C:\zandronum\bin
ADD config C:\zandronum\config
ADD bin C:\zandronum\bin
ADD player C:\zandronum\player
ADD iwad C:\zandronum\iwad
ADD wad C:\zandronum\wad

CMD ["C:\\zandronum\\bin\\summon.ps1"]
ENTRYPOINT ["C:\\zandronum\\bin\\summon.ps1"]
EXPOSE 10666
