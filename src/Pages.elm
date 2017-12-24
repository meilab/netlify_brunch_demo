module Pages exposing (..)

import Authors
import Date.Extra exposing (fromCalendarDate)
import Date exposing (Month(..))
import Types exposing (Content, ContentType(..))
import RemoteData exposing (RemoteData)
import Routing exposing (Route(..))


home : Content
home =
    { slug = "/"
    , route = HomeRoute
    , contentType = Page
    , name = "index"
    , title = "Elm Recipes"
    , publishedDate = fromCalendarDate 2017 Sep 23
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , preview = ""
    , hero = "images/cover1.jpg"
    , tags = []
    }


about : Content
about =
    { slug = "/about"
    , route = AboutRoute
    , contentType = Page
    , name = "about"
    , title = "About Elm Recipes"
    , publishedDate = fromCalendarDate 2017 Sep 23
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , preview = ""
    , hero = "images/cover1.jpg"
    , tags = []
    }


archives : Content
archives =
    { slug = "archive"
    , route = ArchiveRoute
    , contentType = Page
    , name = "archive"
    , title = "Archive"
    , publishedDate = fromCalendarDate 2017 Sep 23
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , preview = ""
    , hero = "images/cover1.jpg"
    , tags = []
    }


authors : Content
authors =
    { slug = "author"
    , route = AuthorRoute
    , contentType = AuthorPage
    , name = "author"
    , title = "Author"
    , publishedDate = fromCalendarDate 2017 Sep 23
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , preview = ""
    , hero = "images/cover1.jpg"
    , tags = []
    }


notFoundContent : Content
notFoundContent =
    { slug = "notfound"
    , route = NotFoundRoute
    , contentType = Page
    , name = "not-found"
    , title = "Couldn't find content"
    , publishedDate = fromCalendarDate 2017 Sep 23
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , preview = ""
    , hero = "images/cover1.jpg"
    , tags = []
    }


notFound404 : Content
notFound404 =
    { slug = "404"
    , route = NotFoundRoute
    , contentType = Page
    , name = "404"
    , title = "You Are lost"
    , publishedDate = fromCalendarDate 2017 Sep 23
    , author = Authors.wy
    , markdown = RemoteData.NotAsked
    , preview = ""
    , hero = "images/cover1.jpg"
    , tags = []
    }


pages : List Content
pages =
    [ home
    , about
    , archives
    , authors
    , notFoundContent
    , notFound404
    ]
