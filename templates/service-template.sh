#!/bin/sh
### BEGIN INIT INFO
# Provides:          zandronum-servers
# Required-Start:    $local_fs
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# X-Interactive:     false
# Short-Description: Zandronum service handler
# Description:       Enables the launching of all Zandronum server exec files located
#                    in the path specified by EXEC_PATH. Also provides facilities for
#                    killing all running instances of zandronum-server.
### END INIT INFO

DESC="zandronum-servers"
NAME=zandronum
EXEC_PATH="/home/zandronum/srv-exec/"

start_service()
{
  running=`ps aux | grep zandronum-server | grep -v grep | grep -v zandronum-servers | wc -l`
  if [ $running -gt 0 ] ; then
    echo "$running Zandronum servers are already running."
  else
    echo "Launching all Zandronum servers in $EXEC_PATH ....";
    sudo -u zandronum find "$EXEC_PATH" | grep .sh | cat | sh 2>&1 > /dev/null
  fi
}

stop_service()
{
  echo "Killing all running Zandronum servers ...."
  sudo -u zandronum ps aux | grep zandronum-server | grep -v grep | grep -v zandronum-servers | awk '{print $2}' | xargs kill -9 2>&1 > /dev/null
}

case "$1" in
  start)
    start_service
    ;;
  stop)
    stop_service
    ;;
  restart)
    stop_service
    start_service
    ;;
esac

exit 0

