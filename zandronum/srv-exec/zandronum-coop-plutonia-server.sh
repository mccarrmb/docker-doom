#!/bin/bash
/usr/games/zandronum/zandronum-server -host -port 10766 -iwad "/home/zandronum/.zandronum/plutonia.wad" +exec /home/zandronum/config/coop-plutonia.cfg +CrashLog_Dir "/home/zandronum/logs/coop-plutonia" +CrashLogs 2 2>&1 /dev/null &
