#! /bin/sh
#进程名字可修改
PRO_NAME=nvr.out
HOME_PATH=/home/vgs/nvr

while true ; do
  sleep 1
  NUM=`ps aux | grep ${PRO_NAME} | grep -v grep |wc -l`
  if [ "${NUM}" -lt "1" ];then
    echo "${PRO_NAME} was killed"
	cd ${HOME_PATH}
	nohup ./${PRO_NAME} &
  fi
done

exit 0
