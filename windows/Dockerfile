FROM mcr.microsoft.com/windows:20H2
LABEL maintainer="mccarrmb@github.com"
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

#Default environment variables
ENV IWAD C:\\zandronum\\iwad\\doom1.wad
ENV CONFIG C:\\zandronum\\config\\default-win.cfg
ENV START_MAP E1M1
ENV Z_VERSION 3.0
ENV LOGFILE C:\\zandronum\\log.txt

#Download Zandronum
RUN Invoke-WebRequest $('https://zandronum.com/downloads/zandronum{0}-win32-base.zip' -f $env:Z_VERSION) -OutFile 'zandronum.zip' -UseBasicParsing ; \
    Expand-Archive zandronum.zip -DestinationPath C:\\zandronum ; \
    Remove-Item zandronum.zip ; \
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted

#Create a non-privileged user
RUN net user zandronum /ADD
USER zandronum

#Build the application directory and add files
RUN New-Item -ItemType "directory" -Path "C:\\zandronum\\config", "C:\\zandronum\\wad", "C:\\zandronum\\iwad", "C:\\zandronum\\bin", "C:\\zandronum\\player"
RUN Write-Output $null >> $env:LOGFILE
ADD config C:\\zandronum\\config
ADD wad C:\\zandronum\\wad
ADD iwad C:\\zandronum\\iwad
ADD bin C:\\zandronum\\bin
ADD player C:\\zandronum\\player

CMD "powershell.exe -File C:\zandronum\bin\summon.ps1"
EXPOSE 10666
