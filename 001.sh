#! /usr/bin/expect

spawn ssh jtuam@10.142.131.219  #ip地址

expect {

       "password:" { send "gzapp123\r"  };#gzapp123  为密码
}
interact
