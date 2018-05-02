#!/usr/bin/env bash

echo "===========进入git项目dianpoint目录============="
cd /developer/git-repository/mmall_learning


echo "==========git切换master==============="
git checkout master

echo "==================git fetch======================"
git fetch

echo "==================git pull======================"
git pull


echo "===========编译并跳过单元测试===================="
mvn clean package -Dmaven.test.skip=true -Pprod


echo "============删除旧的ROOT.war==================="
rm /developer/$1/webapps/ROOT.war


echo "======拷贝编译出来的war包到tomcat下-ROOT.war======="
cp /developer/git-repository/mmall_learning/target/mmall.war  /developer/$1/webapps/ROOT.war


echo "============删除tomcat下旧的ROOT文件夹============="
rm -rf /developer/$2/webapps/ROOT



echo "====================关闭tomcat====================="
/developer/$1/bin/shutdown.sh


echo "================sleep 10s========================="
for i in {1..10}
do
	echo $i"s"
	sleep 1s
done


echo "====================启动tomcat====================="
/developer/$1/bin/startup.sh
