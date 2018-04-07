module Components.MoviePortrait exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Models exposing (..)
import Msg exposing(..)
import Styles exposing (..)
import Image exposing (Image)
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Grid.Row as Row 


moviePortrait : Movie -> Grid.Column Msg
moviePortrait movie =

    Grid.col [] [
          a [href movie.link] [Image.viewImg [Styles.poster] movie.poster]
        , div [Styles.title] [text (movie.title)]
        , div [] [text ("Rating: " ++ toString(movie.rating))]
        , div [] [text ("Likes: " ++ toString(movie.likes))]
        , div [] [text ("Match Percentage: " ++ toString(movie.matchPercentage))]
        , button [ onClick <| IncrementLikes movie.id ] [ text "♡" ]
    ]
  

moviePortraites : Model -> List (Grid.Column Msg)
moviePortraites model = List.map moviePortrait model.movies
