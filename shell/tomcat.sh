#!/bin/bash
a=$1
b=$2
c="all"
function_start () {
	echo "Starting tomcat${b}...\n"
	case ${b} in 
		6080)
			/data/tomcat/tomcat6080/bin/startup.sh 2>&1 > /dev/null & ;;
		7080)
			/data/tomcat/tomcat7080/bin/startup.sh 2>&1 > /dev/null & ;;
		8080)
			/data/tomcat/tomcat8080/bin/startup.sh 2>&1 > /dev/null & ;;
		all)
			/data/tomcat/tomcat6080/bin/startup.sh 2>&1 > /dev/null &
			/data/tomcat/tomcat7080/bin/startup.sh 2>&1 > /dev/null &
			/data/tomcat/tomcat8080/bin/startup.sh 2>&1 > /dev/null &
		;;
	esac
}
function_stop(){
	if [ $b = $c ]
	 then
		echo "kill tomcat all  ..\n"
		ps -aux|grep tomcat|grep -v grep|cut -c 9-15|xargs kill -9 2>&1 > /dev/null &
	else 
		echo "kill tomcat${b} ..\n"
		ps -aux|grep ${b}|grep -v grep|cut -c 9-15|xargs kill -9 2>&1 > /dev/null &
	fi
}
function_cp(){
	cp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war /data/tomcat/tomcat7080/webapps 2>&1 > /dev/null &
	cp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war /data/tomcat/tomcat8080/webapps 2>&1 > /dev/null &
	echo "ok !!!...\n"
}
function_rm(){
	echo " rm -ef tomcat${b}/webapps..\n"
	case ${b} in
		6080)
			rm -rf /data/tomcat/tomcat6080/webapps/* 2>&1 > /dev/null & ;;
		7080)
			rm -rf /data/tomcat/tomcat7080/webapps/* 2>&1 > /dev/null & ;;
		8080) 
			rm -rf /data/tomcat/tomcat8080/webapps/* 2>&1 > /dev/null & ;;
		all)
			rm -rf /data/tomcat/tomcat6080/webapps/* 2>&1 > /dev/null &
			rm -rf /data/tomcat/tomcat7080/webapps/* 2>&1 > /dev/null &
			rm -rf /data/tomcat/tomcat8080/webapps/* 2>&1 > /dev/null &
		;;
	esac
}
function_exists(){
	TomcatID=$(ps -ef | grep tomcat${b} | grep -w 'tomcat'|grep -v 'grep'|awk '{print $2}')
	if [[ $TomcatID ]];then
		echo "ok"
	else
		echo "error"
	fi 
}
function_log(){
	tail -f /data/tomcat/tomcat${b}/logs/catalina.out
}
case $1 in
        stop)
                function_stop;;
        start)
                function_start;;
        rm)
                function_rm;;
        cp)
		function_cp;;
	log)
		function_log;;
	exists)
		function_exists;;
esac
