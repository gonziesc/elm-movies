import Html exposing (..)
import Html.Events exposing (onClick)
import Movies exposing (..)
import List exposing (..)
import Styles exposing (..)
import Types exposing (..)
import Components.MoviePortrait exposing (..)

main =
  Html.beginnerProgram { model = model, view = view, update = update }


model : Model
model = { movies = Movies.moviesCollection }

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp ->
      model

    Remove movie ->
      {model | movies = List.filter (\x -> x.id /= movie.id) model.movies}

    Reset ->
      {model | movies = Movies.moviesCollection}

--VIEW
view : Model -> Html Msg
view model =
  div [Styles.mainPage] [
      div[Styles.grandTitle] [text ("PdeP-Flix")]
    , div[Styles.gallery] (List.map moviePortrait model.movies)
    , button [ Styles.resetBtn, onClick Reset ] [ text "Reset Gallery" ]
  ]

