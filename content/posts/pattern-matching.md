## Pattern Matching / Destructuring 
Pattern matching(Destructuring)为我们提供了一种从特定数据结构(tuple, list, record)中提取数据的快捷方式。Pattern Matching对于Elixir而言是其一大特色，在Elixir中使用Pattern Matching可以极大的方便开发者编写程序，Elm对于Pattern Matching的支持不是特别多，不过用得好的话，也会提升程序可读性和可维护性

下面的一个简单程序展示了如何对list, tuple, union和record使用pattern matching，have fun:)

```elm
import Html exposing (..)

type MyType
  = AType String
  | BType Int
  | CType (String, Int)


arr = [1,2,3]
rec = {record = "r", number=3, name="WY"}
tup = (1, "tuple")


func =
  let
    arrType =
      case arr of
        [] -> BType 0
        h :: [] -> BType 1
        h :: h1 :: [] -> BType 2
        h :: h1 :: h2 :: [] -> BType 3
        _ -> AType "many"

    { name, number } = rec
  in
    (name, arrType)


renderView (name, arrType) =
  let
    howMany =
      case arrType of
        AType str -> str
        BType num -> toString num
        CType (str, num) -> str ++ (toString num)
  in
    div []
    [ text (howMany ++ " elements in the array")
    , div[][]
    , text ("Author is: " ++ name)
    ]

main =
  renderView func
```

### Links

* [Elm Destructuring (or Pattern Matching) cheatsheet](https://gist.github.com/yang-wei/4f563fbf81ff843e8b1e)
