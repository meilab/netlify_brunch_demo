module Styles.General exposing (..)

import Css exposing (..)
import Css.Elements exposing (..)
import Css.Colors exposing (..)
import Css.Namespace exposing (..)
import Html.CssHelpers exposing (withNamespace)
import Styles.SharedStyles exposing (..)
import Styles.Colors exposing (..)
import Styles.SharedVariables exposing (..)


css : Stylesheet
css =
    (stylesheet << namespace meilabNamespace.name)
        [ html
            [ boxSizing borderBox ]
        , body
            [ fontSize (px 16)
            , fontFamily sansSerif
            , padding zero
            , margin zero
            , backgroundColor background
            ]
        , p
            [ lineHeight (Css.em 1.6) ]
        , each [ h1, h2 ]
            [ padding zero
            , margin zero
            ]
        , h3
            [ margin2 (px 15) zero
            ]
        , img
            [ maxWidth (pct 100)
            , height auto
            ]
        , nav
            [ descendants
                [ ul
                    [ listStyleType none
                    , margin zero
                    , padding zero
                    , displayFlex
                    , justifyContent spaceBetween
                    , alignItems center
                    , textAlign center
                    ]
                ]
            ]
        , class Layout
            [ displayFlex
            , flexDirection column
            , alignItems center
            ]
        , class Container
            [ displayFlex
            ]
        , class ContentContainer
            [ flex (int 1)
            , width (pct 100)
            , displayFlex
            , flexDirection column
            , alignItems center
            , maxWidth (px 759)
            , padding (Css.em 1.5)
            ]
        , each [ class HomePageHero, class PostHero ]
            [ color snow
            , width (pct 100)
            , backgroundColor (hex "#222")
            , backgroundAttachment fixed
            , backgroundRepeat noRepeat
            , backgroundSize cover
            , displayFlex
            , flexDirection column
            , justifyContent center
            , alignItems center
            , textAlign center
            ]
        , class HomePageHero
            [ height (vh 60)
            ]
        , class PostHero
            [ height (vh 40) ]
        , each [ class MenuContainer, class MenuContainerVertical ]
            [ displayFlex
            , justifyContent spaceBetween
            , alignItems center
            ]
        , class MenuContainerVertical
            [ flexDirection column ]
        , class SideBarWrapper
            [ flex3 (int 0) (int 0) menuWidth
            , withClass MenuInActive
                [ display none ]
            ]
        , class SideBarMenu
            [ position fixed
            , width menuWidth
            , height (vh 100)
            , displayFlex
            , flexDirection column
            , justifyContent flexStart
            , backgroundColor ember
            ]
        , each [ class MenuList, class MenuListVertical, class HeaderMenuList ]
            [ width (pct 100)
            , displayFlex
            , justifyContent spaceAround
            , listStyle none
            , padding zero
            , margin zero
            , descendants
                [ a
                    [ textDecoration none
                    , textAlign center
                    , display block
                    , padding (px 10)
                    , color black
                    ]
                ]
            ]
        , class MenuListVertical
            [ flexDirection column ]
        , class HeaderMenuList
            [ display block
            ]
        , class MenuItem
            [ paddingLeft (Css.rem 0.2)

            -- , border3 (px 1) solid silver
            ]
        , class MenuToggler
            [ position absolute
            , color white
            , padding (px 5)
            , left toggleMenuLeftCollapsed
            , top (px 20)
            , border3 (px 1) solid silver
            , descendants
                [ li
                    [ listStyleType none ]
                ]
            , withClass MenuActive
                [ left toggleMenuLeft ]
            , hover
                [ backgroundColor white
                , color black
                ]
            ]
        , class HeaderNavWrapper
            [ position absolute
            , width (pct 100)
            , padding2 zero (px 10)
            , top (px 10)
            ]
        , class HeaderNav
            [ displayFlex
            , justifyContent center
            , color white
            , textTransform uppercase
            , descendants
                [ a
                    [ color snow
                    , hover
                        [ color yellow
                        ]
                    , active
                        [ color yellow ]
                    ]
                ]
            ]
        , class Searcher
            [ width (pct 60)
            , height (Css.rem 2)
            , textAlign center
            ]
        , class IconImg
            [ width (Css.rem 3)
            , height auto
            ]
        , class AuthorContainer
            [ displayFlex
            , flexDirection column
            ]
        , class AuthorMeta
            [ displayFlex
            , flexDirection column
            ]
        , class AuthorItem
            [ displayFlex
            , flexDirection column
            ]
        , class MarkdownWrapper
            [ displayFlex
            , flexDirection column
            , alignItems center
            , width (pct 100)
            ]
        , class MarkdownContent
            [ width (pct 90)
            ]
        , class Spacing
            [ padding2 (px 50) zero ]
        , mediaQuery "screen and (min-width : 48em)"
            [ class HomePageHero
                [ height (vh 60)
                , minHeight (px 240)
                , padding2 (pct 15) zero
                ]
            , class HeaderNav
                [ justifyContent flexStart ]
            , class MenuList
                [ justifyContent flexStart ]
            , class ContentContainer
                [ padding2 zero (pct 12) ]
            ]
        ]
