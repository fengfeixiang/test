#!/bin/bash

a=/data/tomcat/tomcat6080/logs

b=/data/tomcat/tomcat7080/logs

c=/data/tomcat/tomcat8080/logs

function_log(){
	rm -rf *.log &&
	rm -rf *.txt &&
	cat /dev/null > *.out
}

function_rm6080(){
	cd $a &&
	function_log
}
function_rm7080(){
        cd $b && 
        function_log
}
function_rm8080(){
        cd $c && 
        function_log
}
function_rmMqLog(){
	cd /data/logs &&
	rm -rf *
}
		function_rm6080

		function_rm7080

		function_rm8080

		function_rmMqLog
	exit
