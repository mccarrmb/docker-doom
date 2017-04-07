#!/bin/bash
/usr/games/zandronum/zandronum-server -host -port 10767 -iwad "/home/zandronum/.zandronum/tnt.wad" -file "/home/zandronum/.zandronum/TNT31.WAD" +exec /home/zandronum/config/coop-tnt.cfg +CrashLog_Dir "/home/zandronum/logs/coop-tnt" +CrashLogs 2 2>&1 /dev/null &
