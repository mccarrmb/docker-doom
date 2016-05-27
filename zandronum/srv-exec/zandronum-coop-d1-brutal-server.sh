#!/bin/bash
/usr/games/zandronum/zandronum-server -host -port 10668 -iwad "/home/zandronum/.zandronum/doom.wad" -file "/home/zandronum/wad/brutalv20.pk3" +exec /home/zandronum/config/coop-d1-brutal.cfg +CrashLog_Dir "/home/zandronum/logs/coop-d1-brutal" +CrashLogs 2 +map E4M1 2>&1 /dev/null &
