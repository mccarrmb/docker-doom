#!/bin/bash

/home/zandronum/zandronum-server \
  -host \
  -port 10666 \
  -iwad "/home/zandronum/iwads/$IWAD" \
  -file "$PWADS" \
  +exec "/home/zandronum/config/$CONFIG" \
  +CrashLog_Dir "/home/zandronum/logs/$SRV_NAME.log" \
  +CrashLogs 2 \
  +map $BOOT_MAP 
