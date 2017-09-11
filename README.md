# SSO [![Build Status](https://travis-ci.org/laomazi2006/sso.svg?branch=master)](https://travis-ci.org/laomazi2006/sso) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/laomazi2006/sso/master/LICENSE) [![GitHub issues](https://img.shields.io/github/issues/laomazi2006/sso.svg)](https://github.com/laomazi2006/sso/issues) [![GitHub Releases](https://img.shields.io/badge/release-v1.1.0-blue.svg)](https://github.com/laomazi2006/sso/releases)

打造一个单点登录平台，其中包括以下子系统

* CAS SERVER
* 配置中心
* 服务管理系统
* 监控平台
* 客户端集成(cas client、paf4j)

并且在博客中记录整个大家过程以及注意事项

--------------------

其中每一个阶段会发布一个版本，里程碑为：

1. CAS搭建HelloWorld
2. SSL证书生成并导入https
3. 配置中心搭建
4. cas-management搭建
5. 监控平台搭建
6. CAS数据库认证，密码管理
7. 多属性返回
8. 自定义主题
9. 授权码持久化配置、票据持久化配置
10. CAS多系统安全
11. CAS client demo测试单点登录
12. Pa4j客户端单点登录整合
13. Rest协议认证
14. Shiro代理认证
15. OAuth协议对接


## Tutorial: [![Csdn Blog Tutorial](https://img.shields.io/badge/csdn%20blog-tutorial-orange.svg)](http://blog.csdn.net/u010475041/article/category/7156505)

* [Blog](http://blog.csdn.net/u010475041/article/category/7156505)
* [Support](https://github.com/laomazi2006/sso/wiki)

## 模块介绍

| 模块名 |模块介绍|备注|端口情况|必须https|context-path|启动循序
|:-------|:-------|:-------|:-------|:-------|:-----|:--|
|sso-server|cas服务|负责接入鉴权|8443|√|cas|2|
|sso-config|配置中心|负责管理各个服务配置|8888|×|config|1|

## 代码下载
1. 每一个阶段都会封版打一个tag，需要的进行[下载](https://github.com/laomazi2006/sso/releases)
2. 原始构建文件存在于original-files目录下


[码云](https://gitee.com/Kawhi-Carl/sso)
[Github](https://github.com/laomazi2006/sso)




## 环境要求

* jdk8
* maven3

# 作者联系方式

如果技术的交流或者疑问可以联系或者提出issue。

邮箱：huang.wenbin@foxmail.com

QQ: 756884434 (请注明：SSO-github)


> 如果项目对你有技术上的提升、工作上的帮助或者一些启示，不妨请小编喝杯咖啡，小编更会满怀激情的为大家讲解和输出博文哦。

微信
<img src="http://img.blog.csdn.net/20170908092906735?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvdTAxMDQ3NTA0MQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast" width="230" height="230"></img>
支付宝
<img src="http://img.blog.csdn.net/20170908100804669?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvdTAxMDQ3NTA0MQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast" width="230" height="230"></img>
