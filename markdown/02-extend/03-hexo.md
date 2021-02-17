# Hexo

Hexo 是一个快速、简洁且高效的博客框架。Hexo 使用 Markdown（或其他渲染引擎）解析文章，在几秒内，即可利用靓丽的主题生成静态网页。

## 相关链接

Hexo 中文官网：<https://hexo.io/zh-cn/docs/>
theme-kaze 模板:<https://demo.theme-kaze.top/>

## 建站步骤

1. 安装hexo`npm install -g hexo-cli && npm install hexo-deployer-git --save`
2. 创建项目`hexo init myblog`
3. 切换到项目并安装依赖`cd myblog && npm install`
4. 新建文章`hexo new test`
5. 编辑文章`vim source/_posts/test.md`
6. 在Github上新建一个 repository。如果站点通过 <你的 GitHub 用户名>.github.io 域名访问，你的 repository 应该直接命名为 /<你的 GitHub 用户名>.github.io。
7. 编辑config`vim _config.yml`,如下
8. 本地预览`hexo g && hexo s`
9. 推送Github`hexo d`

```yaml
deploy:
    type: git
    repo: https://github.com/<username>/<project>
    branch: master
```

### Project page

如果你更希望你的站点部署在 \<你的 GitHub 用户名>.github.io 的子目录中，你的 repository 需要直接命名为子目录的名字，这样你的站点可以通过 https://\<你的 GitHub 用户名>.github.io/\<repository 的名字> 访问。

需要检查的 Hexo 配置文件，将 url 修改为 https://\<你的 GitHub 用户名>.github.io/\<repository 的名字>、将 root 的值修改为 /\<repository 的名字>/。

### hexo new 创建新文章

```bash
hexo new [layout] <title>
```

#### Layout

Hexo 有三种默认布局：post、page 和 draft。在创建这三种不同类型的文件时，它们将会被保存到不同的路径。

布局 | 路径
-- | --
post | source/_posts
page | source
draft | source/_drafts

#### 文件名称

Hexo 默认以标题做为文件名称，但您可编辑 `new_post_name` 参数来改变默认的文件名称，举例来说，设为 `:year-:month-:day-:title.md` 可让您更方便的通过日期来管理文章。

变量 | 描述
-- | --
:title | 标题（小写，空格将会被替换为短杠）
:year | 建立的年份，比如， 2015
:month | 建立的月份（有前导零），比如， 04
:i_month | 建立的月份（无前导零），比如， 4
:day | 建立的日期（有前导零），比如， 07
:i_day | 建立的日期（无前导零），比如， 7

#### 草稿

Hexo 的一种特殊布局：`draft`，这种布局在建立时会被保存到 `source/_drafts` 文件夹，可通过 `publish` 命令将草稿移动到 `source/_posts` 文件夹，该命令的使用方式与 `new` 十分类似，您也可在命令中指定 `layout` 来指定布局。

```bash
hexo publish [layout] <title>
```

草稿默认不会显示在页面中，您可在执行时加上 `--draft` 参数，或是把 `render_drafts` 参数设为 `true` 来预览草稿。

#### 模版（Scaffold）

在新建文章时，Hexo 会根据 scaffolds 文件夹内相对应的文件来建立文件，例如：

```bash
hexo new photo "My Gallery"
```

在执行这行指令时，Hexo 会尝试在 scaffolds 文件夹中寻找 photo.md，并根据其内容建立文章。

### Front-matter

文章md文件最上方以 --- 分隔的区域，用于指定个别文件的变量，举例来说：

```yaml
---
title: Hello World
date: 2013/7/13 20:46:25
---
```

以下是预先定义的参数，可在模板中使用这些参数值并加以利用。

参数 | 描述 | 默认值
-- | -- | --
layout | 布局 | config.default_layout
title | 标题 | 文章的文件名
date | 建立日期 | 文件建立日期
updated | 更新日期 | 文件更新日期
comments | 开启文章的评论功能 | true
tags | 标签（不适用于分页） |
categories | 分类（不适用于分页） |

### 资源文件夹

资源（Asset）代表 source 文件夹中除了文章以外的所有文件，例如图片、CSS、JS 文件等。

#### 文章资源文件夹

对于那些想要更有规律地提供图片和其他资源以及想要将他们的资源分布在各个文章上的人来说，Hexo也提供了更组织化的方式来管理资源。可以通过将 `config.yml` 文件中的 `post_asset_folder` 选项设为 `true` 来打开。

当资源文件管理功能打开后，Hexo将会在你每一次通过 `hexo new [layout] <title>` 命令创建新文章时自动创建一个文件夹。这个资源文件夹将会有与这个文章文件一样的名字。将所有与你的文章有关的资源放在这个关联文件夹中之后，你可以通过相对路径来引用它们，这样你就得到了一个更简单而且方便得多的工作流。

#### 相对路径引用的标签插件

通过常规的 markdown 语法和相对路径来引用图片和其它资源可能会导致它们在存档页或者主页上显示不正确。随着Hexo 3 的发布，许多新的标签插件被加入到了核心代码中。这使得你可以更简单地在文章中引用你的资源。

```markdown
{% asset_path slug %}
{% asset_img slug [title] %}
{% asset_link slug [title] %}
```

比如说：当你打开文章资源文件夹功能后，你把一个 `example.jpg` 图片放在了你的资源文件夹中，如果通过使用相对路径的常规 `markdown` 语法 `![](example.jpg)` ，它将不会出现在首页上。（但是它会在文章中按你期待的方式工作）

正确的引用图片方式是使用下列的标签插件而不是 markdown ：

```markdown
{% asset_img example.jpg This is an example image %}
```

通过这种方式，图片将会同时出现在文章和主页以及归档页中。

#### 使用标记嵌入图像

hexo3.1.0引入了一个新选项，允许您在markdown中嵌入图像，而无需使用`asset_img` 标记插件。

```yaml
_config.yml
post_asset_folder: true
marked:
  prependRoot: true
  postAsset: true
```

启用后，资源映像将自动解析为其相应的post路径。例如 `image.jpg` 文件位于 `source/_post/2020-01-02-foo` ，这意味可以通过 `/2020/01/02/foo/image.jpg`调用。
