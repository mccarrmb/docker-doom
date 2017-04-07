#!/bin/bash
/usr/games/zandronum/zandronum-server -host -port 10669 -iwad "/home/zandronum/.zandronum/doom2.wad" -file "/home/zandronum/wad/brutalv20.pk3" +exec /home/zandronum/config/coop-d2-brutal.cfg +CrashLog_Dir "/home/zandronum/logs/coop-d2-brutal" +CrashLogs 2 2>&1 /dev/null &
