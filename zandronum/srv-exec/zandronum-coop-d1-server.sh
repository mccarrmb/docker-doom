#!/bin/bash
/usr/games/zandronum/zandronum-server -host -port 10768 -iwad "/home/zandronum/.zandronum/doom.wad" +exec /home/zandronum/config/coop-d1.cfg +CrashLog_Dir "/home/zandronum/logs/coop-d1" +CrashLogs 2 +map E4M1 2>&1 /dev/null &
