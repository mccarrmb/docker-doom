#!/bin/bash
/usr/games/zandronum/zandronum-server -host -port 10666 -iwad "/home/zandronum/.zandronum/plutonia.wad" -file "/home/zandronum/wad/brutalv20.pk3" +exec /home/zandronum/config/coop-plutonia-brutal.cfg +CrashLog_Dir "/home/zandronum/logs/coop-plutonia-brutal" +CrashLogs 2 2>&1 /dev/null &
