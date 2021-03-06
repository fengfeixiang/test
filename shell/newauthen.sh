


#!/bin/bash

if [ ! -f "/data/shell/$1.txt" ];then
cat /data/logs/*/ctg_applog_2018-$1*|grep reqMessage|awk -F "ProvinceCode" '{print $2,$0}'|awk -F "ServiceCode" '{print substr($0,1,3)$2,$0}'|grep ^'>'|awk -F "RspCode" '{print substr($0,1,12)$2}'>$1.txt

fi
echo  "-----------------------上海(02)--------------------------------------- "

total=$(cat $1.txt |grep ">02>CAP11001"|wc -l)

echo "上海认证总量:"$total

sucessNum=$(cat $1.txt |grep ">02>CAP11001>0000<"|wc -l)

echo "上海认证成功数量"$sucessNum


rate=$(echo "scale=2;$sucessNum*100/$total"|bc)

echo "上海认证成功率$2: "$rate"%"

echo  "-----------------------海南(22)---------------------------------------- "

total=$(cat $1.txt |grep ">22>CAP11001"|wc -l)

echo "海南认证总量:"$total
sucessNum=$(cat $1.txt |grep ">22>CAP11001>0000<"|wc -l)

echo "海南认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(海南)认证成功率: "$rate"%"
fi


echo  "-----------------------江苏(11)---------------------------------------- "

total=$(cat $1.txt |grep ">11>CAP11001"|wc -l)

echo "江苏认证总量:"$total
sucessNum=$(cat $1.txt |grep ">11>CAP11001>0000<"|wc -l)

echo "江苏认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
  
rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "江苏认证成功率: "$rate"%"
fi

echo  "-----------------------浙江(12)---------------------------------------- "

total=$(cat $1.txt |grep ">12>CAP11001"|wc -l)

echo "浙江认证总量:"$total
sucessNum=$(cat $1.txt |grep ">12>CAP11001>0000<"|wc -l)

echo "浙江认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(海南)认证成功率: "$rate"%"
fi


echo  "-----------------------山东(16)---------------------------------------- "

total=$(cat $1.txt |grep ">16>CAP11001"|wc -l)

echo "山东认证总量:"$total
sucessNum=$(cat $1.txt |grep ">16>CAP11001>0000<"|wc -l)

echo "山东认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
  
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(山东)认证成功率: "$rate"%"
fi



echo  "-----------------------宁夏(30)---------------------------------------- "

total=$(cat $1.txt |grep ">30>CAP11001"|wc -l)

echo "宁夏认证总量:"$total
sucessNum=$(cat $1.txt |grep ">30>CAP11001>0000<"|wc -l)

echo "宁夏认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(宁夏)认证成功率: "$rate"%"
fi




echo  "-----------------------青海(29)---------------------------------------- "

total=$(cat $1.txt |grep ">29>CAP11001"|wc -l)

echo "青海认证总量:"$total
sucessNum=$(cat $1.txt |grep ">29>CAP11001>0000<"|wc -l)

echo "青海认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(宁夏)认证成功率: "$rate"%"
fi


echo  "-----------------------陕西(27)---------------------------------------- "

total=$(cat $1.txt |grep ">27>CAP11001"|wc -l)

echo "陕西认证总量:"$total
sucessNum=$(cat $1.txt |grep ">27>CAP11001>0000<"|wc -l)

echo "陕西认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(陕西)认证成功率: "$rate"%"
fi


echo  "-----------------------吉林(09)---------------------------------------- "

total=$(cat $1.txt |grep ">09>CAP11001"|wc -l)

echo "(吉林)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">09>CAP11001>0000<"|wc -l)

echo "(吉林)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(吉林)认证成功率: "$rate"%"
fi

echo  "-----------------------河北(05)---------------------------------------- "

total=$(cat $1.txt |grep ">05>CAP11001"|wc -l)

echo "(河北)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">05>CAP11001>0000<"|wc -l)

echo "(河北)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(河北)认证成功率: "$rate"%"
fi

echo  "-----------------------天津(03)---------------------------------------- "

total=$(cat $1.txt |grep ">03>CAP11001"|wc -l)

echo "(天津)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">03>CAP11001>0000<"|wc -l)

echo "(天津)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(天津)认证成功率: "$rate"%"
fi

echo  "-----------------------黑龙江(10)---------------------------------------- "

total=$(cat $1.txt |grep ">10>CAP11001"|wc -l)

echo "(黑龙江)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">10>CAP11001>0000<"|wc -l)

echo "(黑龙江)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(黑龙江)认证成功率: "$rate"%"
fi





echo  "-----------------------湖北(18)---------------------------------------- "

total=$(cat $1.txt |grep ">18>CAP11001"|wc -l)

echo "(湖北)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">18>CAP11001>0000<"|wc -l)

echo "(湖北)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(湖北)认证成功率: "$rate"%"
fi




echo  "-----------------------四川(23)---------------------------------------- "

total=$(cat $1.txt |grep ">23>CAP11001"|wc -l)

echo "(四川)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">23>CAP11001>0000<"|wc -l)

echo "(四川)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(四川)认证成功率: "$rate"%"
fi





echo  "-----------------------西藏(26)---------------------------------------- "

total=$(cat $1.txt |grep ">26>CAP11001"|wc -l)

echo "(西藏)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">26>CAP11001>0000<"|wc -l)

echo "(西藏)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(西藏)认证成功率: "$rate"%"
fi



echo  "-----------------------河南(17)---------------------------------------- "

total=$(cat $1.txt |grep ">17>CAP11001"|wc -l)

echo "(河南)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">17>CAP11001>0000<"|wc -l)

echo "(河南)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(河南)认证成功率: "$rate"%"
fi



echo  "-----------------------广东(20)---------------------------------------- "

total=$(cat $1.txt |grep ">20>CAP11001"|wc -l)

echo "(广东)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">20>CAP11001>0000<"|wc -l)

echo "(广东)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(广东)认证成功率: "$rate"%"
fi



echo  "-----------------------重庆(04)---------------------------------------- "

total=$(cat $1.txt |grep ">04>CAP11001"|wc -l)

echo "(重庆)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">04>CAP11001>0000<"|wc -l)

echo "(重庆)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(重庆)认证成功率: "$rate"%"
fi


echo  "-----------------------广西(21)---------------------------------------- "

total=$(cat $1.txt |grep ">21>CAP11001"|wc -l)

echo "(广西)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">21>CAP11001>0000<"|wc -l)

echo "(广西)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(广西)认证成功率: "$rate"%"
fi


echo  "-----------------------云南(25)---------------------------------------- "

total=$(cat $1.txt |grep ">25>CAP11001"|wc -l)

echo "(云南)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">25>CAP11001>0000<"|wc -l)

echo "(云南)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(云南)认证成功率: "$rate"%"
fi




echo  "-----------------------贵州(24)---------------------------------------- "

total=$(cat $1.txt |grep ">24>CAP11001"|wc -l)

echo "(贵州)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">24>CAP11001>0000<"|wc -l)

echo "(贵州)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(贵州)认证成功率: "$rate"%"
fi

echo  "-----------------------辽宁(08)---------------------------------------- "
total=$(cat $1.txt |grep ">08>CAP11001"|wc -l)

echo "(辽宁)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">08>CAP11001>0000<"|wc -l)

echo "(辽宁)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(辽宁)认证成功率: "$rate"%"
fi

echo  "-----------------------内蒙(07)---------------------------------------- "

total=$(cat $1.txt |grep ">07>CAP11001"|wc -l)

echo "(内蒙)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">07>CAP11001>0000<"|wc -l)

echo "(内蒙)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(内蒙)认证成功率: "$rate"%"
fi

echo  "-----------------------新疆(31)---------------------------------------- "

total=$(cat $1.txt |grep ">31>CAP11001"|wc -l)

echo "(新疆)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">31>CAP11001>0000<"|wc -l)

echo "(新疆)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(新疆)认证成功率: "$rate"%"
fi

echo  "-----------------------北京(01)---------------------------------------- "

total=$(cat $1.txt |grep ">01>CAP11001"|wc -l)

echo "(北京)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">01>CAP11001>0000<"|wc -l)

echo "(北京)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(北京)认证成功率: "$rate"%"
fi

echo  "-----------------------甘肃(28)---------------------------------------- "

total=$(cat $1.txt |grep ">28>CAP11001"|wc -l)

echo "(甘肃)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">28>CAP11001>0000<"|wc -l)

echo "(甘肃)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(甘肃)认证成功率: "$rate"%"
fi

echo  "-----------------------安徽(13)---------------------------------------- "

total=$(cat $1.txt |grep ">13>CAP11001"|wc -l)

echo "(安徽)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">13>CAP11001>0000<"|wc -l)

echo "(安徽)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(安徽)认证成功率: "$rate"%"
fi

echo  "-----------------------湖南(19)---------------------------------------- "

total=$(cat $1.txt |grep ">19>CAP11001"|wc -l)

echo "(湖南)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">19>CAP11001>0000<"|wc -l)

echo "(湖南)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(湖南)认证成功率: "$rate"%"
fi

echo  "-----------------------福建(14)---------------------------------------- "

total=$(cat $1.txt |grep ">14>CAP11001"|wc -l)

echo "(福建)认证总量:"$total
sucessNum=$(cat $1.txt |grep ">14>CAP11001>0000<"|wc -l)

echo "(福建)认证成功数量"$sucessNum

if [[ $sucessNum -gt 0 ]];then
 
  rate=$(echo "scale=2;$sucessNum*100/$total"|bc)
  echo "(福建)认证成功率: "$rate"%"
fi
rm $1.txt
