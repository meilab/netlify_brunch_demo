module Views.Authors exposing (authorView)

import Models exposing (..)
import Authors
import Messages exposing (Msg(..))
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.CssHelpers exposing (withNamespace)
import Types exposing (Author)
import ViewHelpers exposing (formatDate, externalLink)
import Styles.SharedStyles exposing (..)
import Views.SharedViews exposing (..)


{ id, class, classList } =
    withNamespace "meilab"


authorView : Model -> Html Msg
authorView model =
    renderAuthors


renderAuthors : Html Msg
renderAuthors =
    div [ class [ ContentContainer ] ]
        [ div [ class [ AuthorContainer ] ]
            (Authors.authors
                |> List.map renderAuthor
            )
        ]


renderAuthor : Author -> Html Msg
renderAuthor author =
    div [ class [ AuthorItem ] ]
        [ h1 [] [ text author.name ]
        , h2 [] [ text author.bio ]
        , div [ class [ AuthorMeta ] ]
            [ span [] [ text author.blog ]
            , span [] [ text author.github ]
            , span [] [ text author.location ]
            , span [] [ text author.email ]
            ]
        ]
