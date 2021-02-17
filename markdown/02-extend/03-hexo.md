# Hexo

Hexo 是一个快速、简洁且高效的博客框架。Hexo 使用 Markdown（或其他渲染引擎）解析文章，在几秒内，即可利用靓丽的主题生成静态网页。

## 相关链接

Hexo 中文官网：<https://hexo.io/zh-cn/docs/>

## 建站步骤

1. 安装hexo`npm install -g hexo-cli && npm install hexo-deployer-git --save`
2. 创建项目`hexo init myblog`
3. 切换到项目并安装依赖`cd myblog && npm install`
4. 新建文章`hexo new test`
5. 编辑文章`vim source/_posts/test.md`
6. 编辑config`vim _config.yml`,如下
7. 推送Github`hexo clean && hexo deploy`

```yml
deploy:
    type: git
    repo: <repository url>
    branch: [branch]
    message: [message]
```
