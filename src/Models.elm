module Models exposing (..)

import Routing exposing (Route)
import Types exposing (Content, Tags, TagType(..))
import Pages


type alias Url =
    { base_url : String }


type alias Ui =
    { sideMenuActive : Bool }


type alias Model =
    { route : Route
    , url : Url
    , tags : Tags
    , currentContent : Content
    , titleFilter : Maybe String
    , tagFilter : Maybe TagType
    }


tags : Tags
tags =
    [ FlowControl
    , Collections
    , Strings
    , Functions
    , Types
    , Union
    , DataStructure
    , Destructuring
    , Repl
    , Debugging
    , Files
    , Native
    , NativeUi
    , Plotting
    , Json
    , Phoenix
    ]


initialModel : Route -> Url -> Model
initialModel route url =
    { route = route
    , url = url
    , tags = tags
    , currentContent = Pages.home
    , titleFilter = Nothing
    , tagFilter = Nothing
    }
