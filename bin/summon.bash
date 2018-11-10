#!/bin/bash

/home/zandronum/zandronum-server \
  -host \
  -port 10666 \
  -iwad "/home/zandronum/iwads/doom1.wad" \
  +exec "/home/zandronum/config/default.cfg" \
  +CrashLog_Dir "/home/zandronum/logs/docker-doom.log" \
  +CrashLogs 2 \
  +map E1M1
