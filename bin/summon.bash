#!/bin/bash

/home/zandronum/zandronum-server \
  -host \
  -port 10666 \
  -iwad "/home/zandronum/iwads/$IWAD" \
  +exec "/home/zandronum/config/$CONFIG" \
  +CrashLog_Dir "/home/zandronum/logs/$SERVER_NAME.log" \
  +CrashLogs 2 \
  +map $START_MAP 
