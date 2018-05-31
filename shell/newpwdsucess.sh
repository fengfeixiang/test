



#!/bin/bash

if [ ! -f "/data/shell/$1.txt" ];then
cat /data/logs/*/ctg_applog_2018-$1*|grep reqMessage|awk -F "ProvinceCode" '{print $2,$0}'|awk -F "ServiceCode" '{print substr($0,1,3)$2,$0}'|grep ^'>'|awk -F "RspCode" '{print substr($0,1,12)$2}'>$1.txt
fi

echo  "-----------------------上海(02)--------------------------------------- "

total=$(cat $1.txt |grep -E ">02>CAP14007|>02>CAP14009"|wc -l)

echo "(上海)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">02>CAP14007|>02>CAP14009"|grep ">0000<"|wc -l)
echo "上海密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
echo "(上海)密码管理成功率: "$rate"%"
  
fi

echo  "-----------------------海南(22)---------------------------------------- "

total=$(cat $1.txt |grep -E ">22>CAP14007|>22>CAP14009"|wc -l)

echo "海南密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">22>CAP14007|>22>CAP14009"|grep ">0000<"|wc -l)

echo "海南密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(海南)密码管理成功率: "$rate"%"
fi


echo  "-----------------------江苏(11)---------------------------------------- "

total=$(cat $1.txt |grep -E ">11>CAP14007|>11>CAP14009"|wc -l)

echo "江苏密码管理总量:"$total

sucessNum=$(cat $1.txt |grep -E ">11>CAP14007|>11>CAP14009"|grep ">0000<"|wc -l)

echo "江苏密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
  
rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "江苏密码管理成功率: "$rate"%"
fi

echo  "-----------------------浙江(12)---------------------------------------- "

total=$(cat $1.txt |grep -E ">12>CAP14007|>12>CAP14009"|wc -l)

echo "浙江密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">12>CAP14007|>12>CAP14009"|grep ">0000<"|wc -l)

echo "浙江密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(海南)密码管理成功率: "$rate"%"
fi


echo  "-----------------------山东(16)---------------------------------------- "

total=$(cat $1.txt |grep -E ">16>CAP14007|>16>CAP14009"|wc -l)

echo "山东密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">16>CAP14007|>16>CAP14009"|grep ">0000<"|wc -l)

echo "山东密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
  
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(山东)密码管理成功率: "$rate"%"
fi



echo  "-----------------------宁夏(30)---------------------------------------- "

total=$(cat $1.txt |grep -E ">30>CAP14007|>30>CAP14009"|wc -l)
echo "宁夏密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">30>CAP14007|>30>CAP14009"|grep ">0000<"|wc -l)

echo "宁夏密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(宁夏)密码管理成功率: "$rate"%"
fi




echo  "-----------------------青海(29)---------------------------------------- "

total=$(cat $1.txt |grep -E ">29>CAP14007|>29>CAP14009"|wc -l)

echo "青海密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">29>CAP14007|>29>CAP14009"|grep ">0000<"|wc -l)

echo "青海密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(宁夏)密码管理成功率: "$rate"%"
fi


echo  "-----------------------陕西(27)---------------------------------------- "

total=$(cat $1.txt |grep -E ">27>CAP14007|>27>CAP14009"|wc -l)

echo "陕西密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">27>CAP14007|>27>CAP14009"|grep ">0000<"|wc -l)
echo "陕西密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(陕西)密码管理成功率: "$rate"%"
fi


echo  "-----------------------吉林(09)---------------------------------------- "

total=$(cat $1.txt |grep -E ">09>CAP14007|>09>CAP14009"|wc -l)

echo "(吉林)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">09>CAP14007|>09>CAP14009"|grep ">0000<"|wc -l)

echo "(吉林)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(吉林)密码管理成功率: "$rate"%"
fi

echo  "-----------------------河北(05)---------------------------------------- "

total=$(cat $1.txt |grep -E ">05>CAP14007|>05>CAP14009"|wc -l)

echo "(河北)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">05>CAP14007|>05>CAP14009"|grep ">0000<"|wc -l)

echo "(河北)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(河北)密码管理成功率: "$rate"%"
fi

echo  "-----------------------天津(03)---------------------------------------- "

total=$(cat $1.txt |grep -E ">03>CAP14007|>03>CAP14009"|wc -l)


echo "(天津)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">03>CAP14007|>03>CAP14009"|grep ">0000<"|wc -l)

echo "(天津)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(天津)密码管理成功率: "$rate"%"
fi

echo  "-----------------------黑龙江(10)---------------------------------------- "

total=$(cat $1.txt |grep -E ">10>CAP14007|>10>CAP14009"|wc -l)

echo "(黑龙江)密码管理总量:"$total

sucessNum=$(cat $1.txt |grep -E ">10>CAP14007|>10>CAP14009"|grep ">0000<"|wc -l)
echo "(黑龙江)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
echo "(黑龙江)密码管理成功率: "$rate"%"
fi





echo  "-----------------------湖北(18)---------------------------------------- "

total=$(cat $1.txt |grep -E ">18>CAP14007|>18>CAP14009"|wc -l)
echo "(湖北)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">18>CAP14007|>18>CAP14009"|grep ">0000<"|wc -l)

echo "(湖北)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(湖北)密码管理成功率: "$rate"%"
fi




echo  "-----------------------四川(23)---------------------------------------- "

total=$(cat $1.txt |grep -E ">10>CAP14007|>23>CAP14009"|wc -l)

echo "(四川密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">23>CAP14007|>10>CAP14009"|grep ">0000<"|wc -l)

echo "(四川)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(四川)密码管理成功率: "$rate"%"
fi





echo  "-----------------------西藏(26)---------------------------------------- "

total=$(cat $1.txt |grep -E ">26>CAP14007|>26>CAP14009"|wc -l)


echo "(西藏)密码管理总量:"$total

sucessNum=$(cat $1.txt |grep -E ">26>CAP14007|>26>CAP14009"|grep ">0000<"|wc -l)

echo "(西藏)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(西藏)密码管理成功率: "$rate"%"
fi



echo  "-----------------------河南(17)---------------------------------------- "

total=$(cat $1.txt |grep -E ">17>CAP14007|>17>CAP14009"|wc -l)

echo "(河南)密码管理总量:"$total

sucessNum=$(cat $1.txt |grep -E ">26>CAP14007|>26>CAP14009"|grep ">0000<"|wc -l)

echo "(河南)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(河南)密码管理成功率: "$rate"%"
fi



echo  "-----------------------广东(20)---------------------------------------- "

total=$(cat $1.txt |grep -E ">20>CAP14007|>20>CAP14009"|wc -l)

echo "(广东)密码管理总量:"$total

sucessNum=$(cat $1.txt |grep -E ">20>CAP14007|>20>CAP14009"|grep ">0000<"|wc -l)

echo "(广东)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(广东)密码管理成功率: "$rate"%"
fi



echo  "-----------------------重庆(04)---------------------------------------- "

total=$(cat $1.txt |grep -E ">04>CAP14007|>04>CAP14009"|wc -l)

echo "(重庆)密码管理总量:"$total

sucessNum=$(cat $1.txt |grep -E ">04>CAP14007|>04>CAP14009"|grep ">0000<"|wc -l)

echo "(重庆)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then

  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(重庆)密码管理成功率: "$rate"%"
fi


echo  "-----------------------广西(21)---------------------------------------- "

total=$(cat $1.txt |grep -E ">21>CAP14007|>21>CAP14009"|wc -l)

echo "(广西)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">21>CAP14007|>21>CAP14009"|grep ">0000<"|wc -l)

echo "(广西)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(广西)密码管理成功率: "$rate"%"
fi


echo  "-----------------------云南(25)---------------------------------------- "

total=$(cat $1.txt |grep -E ">25>CAP14007|>25>CAP14009"|wc -l)

echo "(云南)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">25>CAP14007|>25>CAP14009"|grep ">0000<"|wc -l)

echo "(云南)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(云南)密码管理成功率: "$rate"%"
fi

echo  "-----------------------贵州(24)---------------------------------------- "

total=$(cat $1.txt |grep -E ">24>CAP14007|>25>CAP14009"|wc -l)

echo "(贵州)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">24>CAP14007|>25>CAP14009"|grep ">0000<"|wc -l)

echo "(贵州)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(贵州)密码管理成功率: "$rate"%"
fi
echo  "-----------------------辽宁(08)---------------------------------------- "
total=$(cat $1.txt |grep -E ">08>CAP14007|>25>CAP14009"|wc -l)

echo "(辽宁)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">08>CAP14007|>25>CAP14009"|grep ">0000<"|wc -l)

echo "(辽宁)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(辽宁)密码管理成功率: "$rate"%"
fi

echo  "-----------------------内蒙(07)---------------------------------------- "

total=$(cat $1.txt |grep -E ">07>CAP14007|>25>CAP14009"|wc -l)

echo "(内蒙)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">07>CAP14007|>25>CAP14009"|grep ">0000<"|wc -l)

echo "(内蒙)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(内蒙)密码管理成功率: "$rate"%"
fi

echo  "-----------------------新疆(31)---------------------------------------- "

total=$(cat $1.txt |grep -E ">31>CAP14007|>31>CAP14009"|wc -l)

echo "(新疆)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">31>CAP14007|>31>CAP14009"|grep ">0000<"|wc -l)

echo "(新疆)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(新疆)密码管理成功率: "$rate"%"
fi

echo  "-----------------------北京(01)---------------------------------------- "

total=$(cat $1.txt |grep -E ">01>CAP14007|>01>CAP14009"|wc -l)

echo "(北京)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">31>CAP14007|>01>CAP14009"|grep ">0000<"|wc -l)

echo "(北京)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(北京)密码管理成功率: "$rate"%"
fi

echo  "-----------------------甘肃(28)---------------------------------------- "

total=$(cat $1.txt |grep -E ">28>CAP14007|>01>CAP14009"|wc -l)

echo "(北京)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">31>CAP14007|>01>CAP14009"|grep ">0000<"|wc -l)

echo "(北京)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(北京)密码管理成功率: "$rate"%"
fi

echo  "-----------------------安徽(13)---------------------------------------- "

total=$(cat $1.txt |grep -E ">13>CAP14007|>01>CAP14009"|wc -l)

echo "(安徽)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">13>CAP14007|>01>CAP14009"|grep ">0000<"|wc -l)

echo "(安徽)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(安徽)密码管理成功率: "$rate"%"
fi

echo  "-----------------------湖南(19)---------------------------------------- "
total=$(cat $1.txt |grep -E ">19>CAP14007|>01>CAP14009"|wc -l)

echo "(湖南)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">19>CAP14007|>01>CAP14009"|grep ">0000<"|wc -l)

echo "(湖南)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(湖南)密码管理成功率: "$rate"%"
fi
echo  "-----------------------福建(14)---------------------------------------- "

total=$(cat $1.txt |grep -E ">14>CAP14007|>01>CAP14009"|wc -l)

echo "(福建)密码管理总量:"$total
sucessNum=$(cat $1.txt |grep -E ">14>CAP14007|>01>CAP14009"|grep ">0000<"|wc -l)

echo "(福建)密码管理成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(福建)密码管理成功率: "$rate"%"
fi
rm $1.txt
