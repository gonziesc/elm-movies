module Components.MoviePortrait exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Types exposing (..)
import Styles exposing (..)
import Image exposing (Image)


moviePortrait : Movie -> Html Msg
moviePortrait movie =
  div [Styles.portrait] [
      a [href movie.link] [Image.viewImg [Styles.poster] movie.poster]
    , div [Styles.title] [text (movie.title)]
    , div [Styles.title] [text (toString(movie.rating))]
    , button [ Styles.removeBtn, onClick (Remove movie) ] [ text "Remove" ]
    ]