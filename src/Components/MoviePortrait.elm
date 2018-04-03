module Components.MoviePortrait exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Models exposing (..)
import Msg exposing(..)
import Styles exposing (..)
import Image exposing (Image)


moviePortrait : Movie -> Html Msg
moviePortrait movie =
  div [Styles.portrait] [
      a [href movie.link] [Image.viewImg [Styles.poster] movie.poster]
    , div [Styles.title] [text (movie.title)]
    , div [Styles.title] [text (toString(movie.rating))]
    , div [Styles.title] [text (toString(movie.likes))]
    , div [Styles.title] [text (toString(movie.matchPercentage))]
    , button [ onClick <| IncrementLikes movie.id ] [ text "♡" ]
    ]
moviePortraites : Model -> List (Html Msg)
moviePortraites model = List.map moviePortrait model.movies
