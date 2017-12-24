## Elm and Phoenix
[Phoenix](http://www.phoenixframework.org)是基于使用[Elixir](http://elixir-lang.org)的Web服务器端框架，其底层是Erlang，并发性能优。将Phoenix与Elm结合起来，可以采用函数式编程来构建整个前后端代码。


## Elm和Phoenix集成
Phoenix采用Brunch进行资源管理，Elm与Phoenix集成的重点就是将Elm写入Brunch的配置文件，在Elm

* 创建Phoenix Project

```elm
mix phoenix.new elm_and_phoenix
```

* 安装Elm

```javascript
elm-package install elm-lang/html -y
```

* 配置elm-package.json修改source-directories，改为Elm在Phoenix项目中的目录信息

```javascript
[
  "./web/static/elm"
]
```

* 安装elm-brunch

```elm
npm install elm-brunch --save-dev
```

* 修改brunch-config.js

```elm
     elmBrunch: {
      mainModules: [
        'web/static/elm/Main.elm'
        , 'web/static/elm/Chat.elm'
        ],
      outputFolder: 'web/static/js',
      outputFile: "elm.js"
    }
```

* 在layout中添加一个div (id=“main”)

* 将elm.js添加到app.js中

```elm
import Elm from "./elm"
const div = document.getElementById('main')
Elm.Main.embed(div)
```

* 运行Phoenix服务器，修改elm代码后，会自动重新编译elm。

```elm
mix phoenix.server
```
