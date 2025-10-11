# hexo-demo

## 介绍
一个hexo demo 下载之后改改配置达到可以快速搭建一个博客的目的

源码地址https://github.com/zlay0701/hexo-demo  请fork这个使用

演示地址https://hexo-demo.pages.dev/

其他教程见https://zlay0701.github.io/

**nodejs版本>=v18.20.8**


## 软件架构
hexo8.0.0 主题next 8.25.0

## 存在问题

### 新建文章时尽量不要用中文文件名

```
hexo new title  #正确
hexo new 新文章 # 尽量不要用中文
可以在文件内容里改为中文标题 不影响 只是文件名不要用中文
-------
问题1 好像没问题了 好使了!!! 测试没问题!
测试hexo-asset-pro插件
root: / 这种配置中文没问题
root: /blog/ 部署在子目录下时 中文可能有问题 /blog/这一段没拼接在图片路径上 或者图片路径别用/开头用相对路径
-------
问题2 好像也没问题了!!!! 测试没问题!
hexo-permalink-pinyin插件
这个插件配合hexo-asset-pro时图片不显示 图片路径没有翻译过来  
测试结果图片正确的复制到pinyin文件夹中 但是文章中的图片路径还是中文的 结果不显示 
总结 应该修改hexo-asset-pro插件
-------

```



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
   
   修改source/CNAME的内容为你自己的域名!!!!
   
   主配置文件_config.yml
   
   主题配置文件在_config.next.yml
   不要修改theme/next/_config.yml这个文件 升级会自动覆盖
   主题配置文件优先级根目录下>主题文件夹下 
   参见https://hexo.io/zh-cn/docs/configuration.html#使用代替主题配置文件
   ```

## 必须修改主配置(_config.yml)

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

## 必须修改Next主题配置(_config.next.yml)

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

## 部署到Cloudflare Pages

https://zhuanlan.zhihu.com/p/1896206344874334028

## github action 自动部署(私有仓库防止秘钥泄露!)

```
fork hexo-demo-source 记得设置为私有(我不确定可以不可以,不行就复制一份代码之后设置为私有)

生成token
参考https://cloud.tencent.com/developer/article/2369534?from_column=20421&from=20421

主配置文件下修改
deploy: 
  - type: git
    repo: https://#你的密钥#@github.com/zlay0701/zlay0701.github.io.git
    branch: main
    
复制hexo-action.yml文件到.github\workflows目录下
并修改文件内的2行内容,修改为github用户名 和github的邮箱
  git config --global user.name "XXX"
  git config --global user.email "XXX@qq.com"

再用github desktop上传或者其他方式上传，action直接就开始运行了。全绿就配置正常

后续可能会优化成动态token
参考https://blog.csdn.net/qq_45487080/article/details/121345434
```

参考https://cloud.tencent.com/developer/article/2500962

参考https://cloud.tencent.com/developer/article/2369534?from_column=20421&from=20421

## 写作

使用typora 可以加图片参考

https://zlay0701.github.io/p/2025-05-29-hexo-tutorial.html

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



## Star History

<a href="https://star-history.com/#zlay0701/hexo-demo&Date">

 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=zlay0701/hexo-demo&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=zlay0701/hexo-demo&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=zlay0701/hexo-demo&type=Date" />
 </picture>
</a>

