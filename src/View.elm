module View exposing(..)
import Styles exposing (..)
import Msg exposing(..)
import Html exposing (..)
import Html.Events exposing (onClick, onInput)
import Models exposing(..)
import Html.Attributes exposing(..)
import Components.MoviePortrait exposing (..)
import Components.PreferencesModal exposing (..)

view : Model -> Html Msg
view model =
  div [Styles.mainPage] [
      preferencesModal model,
      div[Styles.grandTitle] [text ("PdeP-Flix")]
    , div[Styles.gallery] [input [ placeholder "filter movies", onInput FilterName ] []
    , button [ Styles.resetBtn, onClick ShowDialog ] [ text "Add movie preferences" ]]
    , div[Styles.gallery] (moviePortraites model)
    , button [ Styles.resetBtn, onClick Reset ] [ text "Reset Gallery" ]
  ]
