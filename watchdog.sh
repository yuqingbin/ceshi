#! /bin/sh
#进程名字可修改
PRO_NAME=cloudvgs
HOME_PATH=/home/yuqingbin/VGS/VGS

while true ; do
  NUM=`ps aux | grep ${PRO_NAME} | grep -v grep |wc -l`
  if [ "${NUM}" -lt "1" ];then
    echo "${PRO_NAME} was killed"
	cd ${HOME_PATH}
	nohup ./${PRO_NAME} &
  fi
done

exit 0

