#!/bin/bash
/usr/games/zandronum/zandronum-server -host -port 10769 -iwad "/home/zandronum/.zandronum/doom2.wad" +exec /home/zandronum/config/coop-d2.cfg +CrashLog_Dir "/home/zandronum/logs/coop-d2" +CrashLogs 2 2>&1 /dev/null &
