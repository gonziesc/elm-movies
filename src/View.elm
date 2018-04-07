module View exposing(..)
import Styles exposing (..)
import Msg exposing(..)
import Html exposing (..)
import Html.Events exposing (onClick, onInput)
import Models exposing(..)
import Html.Attributes exposing(..)
import Components.MoviePortrait exposing (..)
import Components.PreferencesModal exposing (..)
import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid

navbar : Html Msg
navbar = 
    nav[class "navbar navbar-dark bg-dark" ]
    [
        a [ class "navbar-brand", href "#" ] [ text "PdeP-Flix" ],
        input [ placeholder "filter movies", onInput FilterName ] []
    ]

view : Model -> Html Msg
view model =
    div []  [
            CDN.stylesheet,
            navbar,
            Grid.container [] [
            preferencesModal model,
            div[] [
                button [onClick ShowDialog ] [ text "Add movie preferences" ]
            ],
            div[] (moviePortraites model),
            button [onClick Reset ] [ text "Reset Gallery" ]
        ]
    ]              
