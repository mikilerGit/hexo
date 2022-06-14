---
title: hexo
date: 2022-03-23 22:15:21
tags: hexo
categories: 0-hexo
---
**<!--more-->**

# hexo+github博客搭建

## 环境搭建

1. node.js

   ```
   环境搭建
   https://www.cnblogs.com/zhouyu2017/p/6485265.html
   
   环境测试
   node -v
   npm -v 
   ```

2. git

   ```
   环境测试
   git --version 
   ```

   配置 用户名与邮箱

   ```
   //配置用户名
   git config --global user.name  "obgeName"
   //配置邮箱
   git config --global user.email "824307555@qq.com"
   ```

   配置 ssh密钥

   ```
   ssh-keygen -t rsa -C "注册git时邮箱"
   git 添加sshm
   ```

   查看ssh密钥

   ```
   cat ~/.ssh/id_rsa.pub
   ```

   验证是否配对成功

   ```
   ssh -T git@github.com
   ```

3. hexo 

   ```
   环境搭建
   npm install express -g 
   
   环境测试
   hexo -v 
   ```

4. ssh

   ```
   生成ssh
   ssh-keygen -t rsa -C "邮箱地址"
   
   .ssh配置文件生成路径
   C:\Users\用户名\.ssh
   
   测定ssh是否绑定成功：
   ssh -T git@github.com
   ```
5. 仓库创建

```
注册名+github.io  

mikilergit.github.io   (必须有readme.md)
```


## 项目搭建

1. 创建hexo 仓库 版本依赖

1. 创建项目空文件夹hexo/blog

3. 安装hexo 依赖文件

   ```
   blog 文件下  命令行：hexo init  或者 手动下载https://github.com/hexojs/hexo-starter
   
   hexo 文件下  npm install
   ```

4. 主题下载

    ```
    进入项目根目录
    cd blog
    
    安装next主题
    git clone https://github.com/theme-next/hexo-theme-next themes/next
    手动下载 https://github.com/theme-next/hexo-theme-next
    ```

5. 主题配置
   
   ```
    进入hexo 配置文件
   blog/_config.yml/
   
   修改theme配置
   theme: next
   ```
   
5. 修改主题风格
   
   ```
    进入next配置文件
   blog/themes/next/_config.yml/
   
   配置主题风格
   # Schemes
   #scheme: Muse
   #scheme: Mist
   scheme: Pisces
   #scheme: Gemini
   ```

 6. [主题风格配置](https://www.cnblogs.com/lfri/p/12219831.html)

    ```
    回到顶部按钮显示百分比
    头像
    去掉顶部黑线
    language_switcher: true
    powered: false
    设置语言
    # Site
    language: zh-CN
    设置主页文章折叠
    增加网站运行时间统计
    ```

 7. [内容添加](https://sjq597.github.io/2018/05/15/Hexo%E4%BD%BF%E7%94%A8next-Pisces%E4%B8%BB%E9%A2%98/)

    ```
    修改导航菜单
    创建分类页面
    创建标签页
    ```
    
 8. 更换背景图片

    ```
    https://zhuanlan.zhihu.com/p/280784973
    ```

 9. 添加发布版权

    ```
    编辑配置文件themes/next/_config.yml，将creative_commons下面的post值由false改为true。
    ```

 10. 去掉网页底部作者、爱心等

```
\themes\next\layout\_partials\footer.swig
```

## 项目运行

```
hexo clean

hexo g

hexo s
```

## 项目发布

```
deploy:
  type: git
  repository: git@github.com:mikilerGit/mikilergit.github.io.git
  branch: mai
  
ssh 连接

安装hexo-deployer-git自动部署发布工具:
npm install hexo-deployer-git --save

hexo clean
hexo g

#上传
hexo d 
```

## 网页访问

```
网址：仓库名 
https://mikilergit.github.io/
```

## 发布文章

```
hexo new 文章名称

添加分类属性：
categories: 类别名称
注意，一篇博文只能属于一个分类，设置多个分类时将会成为分类嵌套。
```

