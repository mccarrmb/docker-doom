#!/bin/bash
/usr/games/zandronum/zandronum-server -host -port 10667 -iwad "/home/zandronum/.zandronum/tnt.wad" -file "/home/zandronum/wad/brutalv20.pk3" "/home/zandronum/.zandronum/TNT31.WAD" +exec /home/zandronum/config/coop-tnt-brutal.cfg +CrashLog_Dir "/home/zandronum/logs/coop-tnt-brutal" +CrashLogs 2 2>&1 /dev/null &
