## Function Composition

Elm提供了piping(`<|`和`|>`)和function composition(`<<`和`>>`)两种组装函数的方式。

使用`<|`和`|>`可以让开发者以更自然的方式书写代码，有点类似与Unix操作系统的管道。
下面例子中，使用`|>`可以让我们以思考的顺序书写代码：组合成"hi" -> 转换成大写字母 -> 重复三次

```elm
String.repeat 3 (String.toUpper (String.append "h" "i"))
-- "HIHIHI" : String

String.append "h" "i" |> String.toUpper |> String.repeat 3
-- "HIHIHI" : String

String.repeat 3 <| String.toUpper <| String.append "h" "i"
-- "HIHIHI" : String

```

使用`<<`和`>>`,我们可以将多个函数组合成一个新函数，新函数常用于`map`,`filter`等高阶函数的参数。`<<`和`>>`表征的是参数传递的方向。下面例子中的myFuncLeft，其从右向左执行，而myFuncRight从左向右执行

```elm
addOne = (+) 1
mulTwo = (*) 2

addThree : Int -> Int
addThree = addOne << addOne << addOne

myFuncLeft : Int -> Int
myFuncLeft = mulTwo << addOne << mulTwo << addOne

myFuncRight : Int -> Int
myFuncRight = mulTwo >> addOne >> mulTwo >> addOne

num = myFunc 2
-- ((((2 + 1) * 2) + 1) * 2) = 14

num2 = myFunc2 2
-- (((2 * 2 + 1) * 2) + 1) = 11

myFunc3 : List Int -> Int
myFunc3 = List.sum << List.filter (isEven << addOne) << List.map (addOne << mulTwo)

num = myFunc 2
b = [1,2,3] |> myFunc3
-- 15
```

### Links

* [What does the `<<` operator mean in elm?](https://stackoverflow.com/questions/27441648/what-does-the-operator-mean-in-elm)
* [Elm Functions](https://dennisreimann.de/articles/elm-functions.html)
