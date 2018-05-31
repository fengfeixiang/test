#!/usr/bin/expect -f
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.219:/data/tomcat/tomcat7080/webapps

set timeout 300 

expect "jtuam@10.142.131.219's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#---------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.219:/data/tomcat/tomcat8080/webapps

set timeout 300 

expect "jtuam@10.142.131.219's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#---------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.220:/data/tomcat/tomcat6080/webapps

set timeout 300 

expect "jtuam@10.142.131.220's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof 
#-------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.220:/data/tomcat/tomcat7080/webapps

set timeout 300 

expect "jtuam@10.142.131.220's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof 
#------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.220:/data/tomcat/tomcat8080/webapps

set timeout 300 

expect "jtuam@10.142.131.220's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof 
#------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.221:/data/tomcat/tomcat6080/webapps

set timeout 300 

expect "jtuam@10.142.131.221's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof 
#---------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.221:/data/tomcat/tomcat7080/webapps

set timeout 300 

expect "jtuam@10.142.131.221's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#--------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.221:/data/tomcat/tomcat8080/webapps

set timeout 300 

expect "jtuam@10.142.131.221's password:"
set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#---------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.222:/data/tomcat/tomcat6080/webapps

set timeout 300 

expect "jtuam@10.142.131.222's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#----------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.222:/data/tomcat/tomcat7080/webapps

set timeout 300 

expect "jtuam@10.142.131.222's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#------------------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.222:/data/tomcat/tomcat8080/webapps

set timeout 300 

expect "jtuam@10.142.131.222's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#----------------------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.223:/data/tomcat/tomcat6080/webapps

set timeout 300 

expect "jtuam@10.142.131.223's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#----------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.223:/data/tomcat/tomcat7080/webapps

set timeout 300 

expect "jtuam@10.142.131.223's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#------------------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.223:/data/tomcat/tomcat8080/webapps

set timeout 300 

expect "jtuam@10.142.131.223's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#----------------------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.224:/data/tomcat/tomcat6080/webapps

set timeout 300 

expect "jtuam@10.142.131.224's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#----------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.224:/data/tomcat/tomcat7080/webapps

set timeout 300 

expect "jtuam@10.142.131.224's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#------------------------------------------------------------------------------
set password gzapp123
spawn scp /data/tomcat/tomcat6080/webapps/ct10000uam-accessmanage.war jtuam@10.142.131.224:/data/tomcat/tomcat8080/webapps

set timeout 300 

expect "jtuam@10.142.131.224's password:"

set timeout 300 

send "$password\r"

set timeout 300 

send "exit\r"

expect eof
#----------------------------------------------------------------------------------
