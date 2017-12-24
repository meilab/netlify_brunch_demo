module Posts exposing (..)

import Types exposing (Content, ContentType(..), TagType(..))
import Authors
import Date.Extra exposing (fromCalendarDate)
import Date exposing (Month(..))
import RemoteData exposing (RemoteData)
import Routing exposing (Route(..))


helloWorld : Content
helloWorld =
    { slug = "/hello-world"
    , route = PostDetailRoute "hello-world"
    , title = "Hello World"
    , name = "hello-world"
    , publishedDate = fromCalendarDate 2017 Sep 25
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , contentType = Post
    , preview = "Hello World in Elm"
    , hero = "images/cover1.jpg"
    , tags = [ Collections, Functions ]
    }


elmAndPhoenix : Content
elmAndPhoenix =
    { slug = "/elm-and-phoenix"
    , route = PostDetailRoute "elm-and-phoenix"
    , title = "Elm And Phoenix"
    , name = "elm-and-phoenix"
    , publishedDate = fromCalendarDate 2017 Oct 29
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , contentType = Post
    , preview = "Elm and Phoenix"
    , hero = "images/cover1.jpg"
    , tags = [ Phoenix ]
    }


patternMatching : Content
patternMatching =
    { slug = "/pattern-matching"
    , route = PostDetailRoute "pattern-matching"
    , title = "Pattern Matching"
    , name = "pattern-matching"
    , publishedDate = fromCalendarDate 2017 Oct 29
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , contentType = Post
    , preview = "Pattern Matching in Elm"
    , hero = "images/cover1.jpg"
    , tags = [ DataStructure, Destructuring ]
    }


functionComposition : Content
functionComposition =
    { slug = "/function-composition"
    , route = PostDetailRoute "function-composition"
    , title = "Function Composition"
    , name = "function-composition"
    , publishedDate = fromCalendarDate 2017 Oct 29
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , contentType = Post
    , preview = "管道与函数组合"
    , hero = "images/cover1.jpg"
    , tags = [ Functions ]
    }


posts : List Content
posts =
    [ helloWorld
    , elmAndPhoenix
    , patternMatching
    , functionComposition
    ]
