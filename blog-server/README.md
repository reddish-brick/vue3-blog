<p align="center">
  <a href="http://39.108.51.116/#/login" target="_blank" rel="noopener noreferrer">
    <img width="180" src="https://img.shields.io/badge/%E5%B0%8F%E5%BC%A0%E7%9A%84%E5%8D%9A%E5%AE%A2%E5%90%8E%E7%AB%AF-v1.0.0-important" alt="Blog logo">
  </a>
</p>



<p align="center">
  <img src="https://img.shields.io/badge/npm-v6.14.17-blue" alt="pnpm version">
  <a href="https://nodejs.org/en/about/releases/">
    <img src="https://img.shields.io/badge/node-v16.17.0-green" alt="node compatibility">
  </a>
  <a href="https://koa.bootcss.com/#">
    <img src="https://img.shields.io/badge/koa-v%5E2.7.0-blue" alt="koa">
  </a>
  <a href="https://github.com/brianmario/mysql2">
    <img src="https://img.shields.io/badge/mysql2-v%5E3.1.2-ff69b4" alt="mysql">
  </a>
  <a href="https://www.qiniu.com/">
    <img src="https://img.shields.io/badge/qiniu-v%5E7.8.0-blue" alt="qiniu">
  </a>
  <a href="https://www.sequelize.cn/">
    <img src="https://img.shields.io/badge/sequelize-v%5E6.29.0-orange" alt="sequelize">
  </a>
  <a href="https://www.npmjs.com/package/bcryptjs">
    <img src="https://img.shields.io/badge/bcryptjs-v%5E2.4.3-brightgreen" alt="bcryptjs">
  </a>
</p>





## ⚡ 简介 introduction

一个前后端分离的个人博客项目 - 后端

已适配移动端、PC端

#### 前台：

博客前台基于vue3、element plus、pinia、axios、vue-router、vue-cli、vue-use、npm、scss等主流技术

前台线上预览地址：http://mrzym.top

gitee仓库地址：https://gitee.com/mrzym/blog-v3

#### 管理后台：

博客管理后台基于pureadmin、vue3、element plus、pinia、axios、vue-router、vue-use、pnpm、vite、sass、tailwindcss等主流技术

后台线上预览地址：http://mrzym.top/admin

gitee仓库地址： https://gitee.com/mrzym/blog-v3-admin

测试账户: test

密码: test123

也可以自行注册用户

#### 后端：

博客后端基于node.js、koa、koa-router、koa-body、seqlize、mysql、qiniu(七牛云对象存储)、bcryptjs、nodemon等主流技术

gitee仓库地址：https://gitee.com/mrzym/blogServer

## 🚀 博客后端下载运行

因为后端是采用的node.js，所以不需要配置很多就能运行。

```git
# npm 版本 v6.14.17
# node 版本 v16.17.0

1、下载项目
git clone https://gitee.com/mrzym/blogServer.git
tips: 也可以下载zip打开，这样不会和我的仓库关联，也可以自己去解除关联
2、打开项目，安装依赖
npm i
3、数据库是mysql，需要先连接数据库
应该大家都有mysql吧，没有就装一个，再装个navicat
(1) 打开项目，在根目录下找到src文件夹下的db文件夹，里面有数据库的sql文件
(2) 使用navicat创建一个空的数据库，运行这个sql文件，就可以生成表和初始数据
(3) 打开项目根目录下的.env文件，根据注释修改自己的mysql数据库账号名称、密码进行连接即可
4、运行项目 
npm run serve 

tips：.env文件下可以配置项目的上传文件方式，local为本地上传，qiniu为上传到七牛云存储，当项目需要部署到服务器的时候，就需要使用到在线存储功能，可以根据代码注释去配置七牛云的一些密钥，你也可以去尝试使用阿里云oss或者是其他的，我现在是一键三连的七牛云的，所以就没有用其他的。.env里注释很清楚，按照注释来就能顺利的启动项目了。
使用admin作为账号来注册用户，默认是管理员，其他账号都是普通用户，不过管理员可以修改用户的角色改成管理员，只有管理员对整个系统有操作权限。
```


## 🌈部署

博客文章会出一系列的部署教程

教程地址：http://mrzym.top/#/articleList?id=2&type=category&name=%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2

## 🥰感谢

感谢我所使用的这些技术框架的开发者、维护者，每一个框架、库的开发，都需要长时间的技术沉淀，充分的思考与不断地踩坑。维护开源库所需要花费的时间和精力更是常人所难以想象的。

如果大家喜欢这个项目的话，麻烦大家点个star、fork，你们的鼓励是我最大的动力。

