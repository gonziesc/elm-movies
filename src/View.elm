module View exposing(..)
import Styles exposing (..)
import Msg exposing(..)
import Html exposing (..)
import Html.Events exposing (onClick, onInput)
import Models exposing(..)
import Html.Attributes exposing(..)
import Components.MoviePortrait exposing (..)
import Components.PreferencesModal exposing (..)
import Components.Navbar exposing (..)
import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Bootstrap.Button as Button
import Bootstrap.Utilities.Spacing as Spacing


genreOption genre =
    option [ value genre ] [ text genre ]

view : Model -> Html Msg
view model =
  div []  [
    CDN.stylesheet,
    navbar,
    preferencesModal model,
        div []
        [ h2 [] [ text "Elija su genero" ]
        , select [onInput ChangeGenre] (List.map genreOption ["", "terror", "suspenso"])
        ],
          fieldset []
    [ label []
        [ input [ type_ "checkbox", onClick KidsFilter ] []
        , text "Kids protection"
        ]],
    Grid.container [] [
      br [] [], -- ranciada para no poner un margin => TO DO: poner un margin
      Grid.row [](moviePortraites model),
      br [] [],
      div [] [
        Button.button [ Button.success , Button.attrs [onClick Reset]] [ text "Reset Gallery" ],
        Button.button [ Button.success, Button.attrs [ Spacing.ml1, onClick ShowDialog ] ] [ text "Add movie preferences" ]
      ]
    ]

  ]
                
