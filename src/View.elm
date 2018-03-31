module View exposing(..)
import Styles exposing (..)
import Msg exposing(..)
import Html exposing (..)
import Html.Events exposing (onClick)
import Models exposing(..)
import Components.MoviePortrait exposing (..)

view : Model -> Html Msg
view model =
  div [Styles.mainPage] [
      div[Styles.grandTitle] [text ("PdeP-Flix")]
    , div[Styles.gallery] (List.map moviePortrait model.movies)
    , button [ Styles.resetBtn, onClick Reset ] [ text "Reset Gallery" ]
  ]
