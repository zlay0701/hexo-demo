# hexo-demo

## 介绍
一个hexo demo 下载之后改改配置达到可以快速搭建一个博客的目的

源码地址https://github.com/zlay0701/hexo-demo-source  请fork这个使用

演示地址https://zlay0701.github.io/hexo-demo/

其他教程见https://zlay0701.github.io/


## 软件架构
hexo7.3.0 主题next 8.23.0

## 特别提示

注意网络环境可以正常连接github.com,提前弄好ssh秘钥连接

## 使用说明

1. fork或者下载源码

2. 安装nodejs18: https://nodejs.org/download/release/latest-v18.x/node-v18.20.8-x64.msi

3. 安装git-scm :https://git-scm.com/downloads

   ```
   设置npm镜像
   npm config set registry https://registry.npmmirror.com/
   
   打开hexo-demo-source文件夹,右键->open git base here 打开命令行窗口
   cd hexo-demo-source
   npm install
   npm install -g hexo-cli
   
   之后测试下
   hexo g
   hexo s
   按照窗口提示访问地址 能成功打开即可
   
   ```

## 必须修改主配置:

```yaml
title: 主标题XXX’Blog
subtitle: 副标题
description: 描述,或者个人介绍
author: 作者昵称

#如果您的网站存放在子目录中，例如 http://example.com/blog，则请将您的 url 设为 http://example.com/blog 并把 root 设为 /blog/
url: https://XXX.github.io/
root: /
#部署设置 
deploy:
 - type: git
   repo: git@github.com:XXX/XXX.git
   branch: main
```

## 必须修改Next主题配置

```yaml
#网站首页的头像
avatar:
  url: /uploads/web-app-manifest-512x512.png
#网站首页联系方式
social:
  GitHub: https://github.com/XXX || fab fa-github
  E-Mail: mailto:XXX@gmail.com || fa fa-envelope
  RSS: /atom.xml || fa fa-rss
  Gitee: https://gitee.com/XXX || fa fa-envelope
#网站建立时间
footer:
  since: 2016
#每篇博客结尾会显示的联系方式
follow_me:
  博客园: https://www.cnblogs.com/XXX/ || fa fa-envelope
#网站右上角的github链接
github_banner:
  enable: true
  permalink: https://github.com/XXX 
#评论系统 也可以使用其他的评论系统
utterances:
  enable: true
  repo: zlay0701/hexo-demo-comments
```

## 部署

```
修改完设置
hexo clean
hexo g
hexo s  测试没问题之后
hexo d部署即可
```



## hexo升级步骤

```
npm i hexo-cli -g
npm install -g npm-check
npm install -g npm-upgrade
npm-check
npm-upgrade
npm update
```

​	升级之后如果有问题可能是配置问题 建议检查主配置文件和主题配置文件

------




## 其他
