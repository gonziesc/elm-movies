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
import Bootstrap.Form as Form
import Bootstrap.Form.Input as Input

navbar : Html Msg
navbar = 
    nav[class "navbar navbar-dark bg-dark" ]
    [
        a [ class "navbar-brand", href "#" ] [ text "PdeP-Flix" ],
        Form.formInline [] [
            Input.text [ Input.attrs [class "mx-sm-3", placeholder "filter movies", onInput FilterName ]] 
        ]
    ]

view : Model -> Html Msg
view model =
    div []  [
            CDN.stylesheet,
            navbar,
            preferencesModal model,
            Grid.container [] [
                Grid.row [](moviePortraites model),
            --div[] [ button [onClick ShowDialog ] [ text "Add movie preferences" ]  ],
                button [onClick Reset ] [ text "Reset Gallery" ]
        ]
    ]              
