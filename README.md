# mmall_learning

MarkDown里面没有图...小伙伴们请看WORD文档呀...



## 学习必读

### 课程项目环境	
### 项目代码RUN起来	
### 课程学习快速通道	
### 知识点整理及分享	


### 课程项目环境
1. centos下载地址

    http://coding.imooc.com/learn/questiondetail/24353.html
    
    阿里云的下载已经失效，请前往官网下载地址下载。

    https://wiki.centos.org/Download

    http://vault.centos.org/6.8/isos/x86_64/

2.	如自己找软件比较麻烦，可以访问http://learning.happymmall.com/

3.	如自己配置比较麻烦，可以参考线上配置http://learning.happymmall.com

4.	接口文档：http://git.oschina.net/imooccode/happymmallwiki/wikis/home

5.	SQL导入，可以通过下载的mmall.sql文件或者从http://learning.happymmall.com/mmall.sql 这里下载sql文件，然后导入到自己的数据库中,可以通过Navicat 数据库客户端工具导入。

6.	课程QQ群分享的资料，这里的资料都是我分享和小伙伴们分享的，有用哟。 http://learning.happymmall.com/QQ%E5%AD%A6%E4%B9%A0%E7%BE%A4%E5%A4%A7%E5%AE%B6%E5%85%B1%E4%BA%AB%E7%9A%84useful%E6%96%87%E6%A1%A3/

7.	Nginx：http://learning.happymmall.com/nginx/ 大家可以访问这个网址，这里可以下载Nginx的Linux/Mac/Windows的版本，还有一期课程线上的配置文件。

8.	Tomcat： http://learning.happymmall.com/tomcat/ 请来这里下载windows、linux/mac 下的tomcat7
如果配置nginx+ftp服务+tomcat来做图片服务器，访问不到，请重点参考此问答 http://coding.imooc.com/learn/questiondetail/9369.html 

9.	自动化发布shell脚本： http://learning.happymmall.com/deploy/ 可以在这里下载到一期课程自动化发布脚本，当然具体的路径还要根据自己的实际项目的环境修改成自己的shell脚本哟
10.	系统环境变量: http://learning.happymmall.com/env/ 这里给大家整理了防火墙的配置和Linux系统环境变量，当然具体的路径小伙伴们根据自己的实际情况来修改好哟。
11.	FTP服务:Windows请在 http://learning.happymmall.com/ftpserver/ 下载，Linux请使用yum安装，在Linux下Vsftpd配置请访问 http://learning.happymmall.com/vsftpdconfig/ 另外在配置vsftpd服务的时候，一定要检查创建的ftp目录里面的用户、用户组权限，是否有对应ftpuser用户的权限，如果没有，可以使用chown、chgrp来指定到ftp操作用户。然后通过chmod给予对应ftp用户的读写执行权限。
12.	Git：请访问 http://learning.happymmall.com/git/ 下载windows和linux/mac 下的git客户端
13.	JDK：请访问 http://learning.happymmall.com/jdk/ 下载windows和linux/mac 下的JDK 
14.	Maven：请访问http://learning.happymmall.com/maven/下载windows和linux/mac 下的Maven

如果Maven默认仓库源比较慢，请修改settings文件，配置上阿里云的Maven仓库源，那个速度还是挺快的。
15.	MySQL：请访问 http://learning.happymmall.com/mysql/下载windows和linux/mac 下的MySQL，另外里面提供了一期课程mysql的配置文件。

项目代码RUN起来
1.	下载sql初始化文件mmall.sql
 
2.	保证在已经安装jdk，maven，tomcat，mysql等的环境并配置好
3.	解压缩源码之后，使用eclipse或者idea导入maven项目
Eclipse：
 
# IDEA：
 
4.	如下图，mybatis-generator需要的mysql包已经放在了tools包下，可以copy出来，放到某个位置，并修改 db.driverLocation的路径到你放的路径。使用mybatis-generator的时候就ok啦~也可以在QQ群共享里拿到这个文件，注意一定是mysql-bin.jar，以bin结尾的jar包。还可以通过http://learning.happymmall.com/mysql-connector-java-5.1.6-bin.jar
这里下载到。不要配置maven下载的mysql驱动，一定是使用-bin.jar哟。

5.	如下图，打开datasource.properties请修改db.url、db.username、db.password为自己的mysql数据库连接需要的url、username、password
 
6.	打开mmall.properties，修改成自己的ftp服务器地址，账号和密码，支付宝回调的地址可以通过课程中讲的外网穿透进行配置。如果用nginx配置的话，请修改本机host支持域名。然后修改ftp文件服务器改成自己的ftp服务器的访问前缀。MD5的salt值非常不建议修改。否则账号就登录不进去啦，还需要重置。支付宝回调地址也要改成自己的。
 

7.	6和7这两个截图中的db的账号、密码、url、还有location、ftp服务器的ip、账号、密码、ftp服务器的前缀、支付宝回调地址请全部修改成你自己环境服务对应的。

8.	然后部署tomcat运行就可以了。
9.	管理员账号：admin 管理员密码：admin


# 课程学习快速通道

1.	在慕课网课程下载源码，解压缩，下载源码步骤如下。
 

2.	如何进入QQ课程技术交流群
首先进入课程网址(一期和二期是不同的QQ课程技术交流群)，点击进入课程，
如图所示，进群的时候一定要填写验证信息，每个验证信息只能使用一次。
 

3.	支付宝： 具体的支付宝对接时候各种文档等，url比较长，特意给大家整理了。请访问 http://learning.happymmall.com/alipaydoc.html 这个网址。
4.	PPT长命令：ppt里面的长命令也给小伙伴们整理了。请访问 http://learning.happymmall.com/pptcommand.html 
5.	一期课程的思维导图：
http://learning.happymmall.com/happymmallv1.svg

6.	架构演进之Tomcat集群和分布式进阶课程相关资料
http://learning.happymmall.com/%E4%BA%8C%E6%9C%9F%E9%9B%86%E7%BE%A4%E5%8F%8A%E7%BC%93%E5%AD%98%E5%88%86%E5%B8%83%E5%BC%8FJava%E7%AB%AF/

 


# 知识点整理及分享

1.	Java从零打造企业级电商项目实战-QQ群分享手记  http://www.imooc.com/article/19094
2.	Java从零打造企业级电商项目实战-思维导图、知识点索引  http://www.imooc.com/article/20193
3.	大型项目架构演进过程及思考的点 http://www.imooc.com/article/17545
4.	找工作的季节之简历及找工作的分享 http://www.imooc.com/article/19998
5.	Java从零打造企业级电商项目实战-课程问答FAQ http://www.imooc.com/article/18998
6.	Geely慕课网首页 http://www.imooc.com/t/2705746
7.	SpringMVC数据绑定 http://www.imooc.com/learn/558
8.	一期课程，Java从零到企业级电商项目实战 http://coding.imooc.com/class/96.html
9.	课程软件及配置 http://learning.happymmall.com/

10.	线上地址(如需登录请登录开放前台及开放后台)

前台 http://www.happymmall.com

后台 http://admin.happymmall.com


## 开放前台 http://test.happymmall.com
## 开放后台 http://admintest.happymmall.com
## 账号：admin 密码：admin
## (为了更多小伙伴们体验使用，请不要修改密码)


# 最后希望小伙伴们学的开心~码的快乐~收获满满~祝大家工作愉快~生活幸福~

Geely


