import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
-- import Json.Decode exposing (..)
import Image exposing (Image)
import Movies exposing (..)
import List exposing (..)
import Styles exposing (..)

main =
  Html.beginnerProgram { model = model, view = view, update = update }

--MODEL
-- type alias Movie = {
--   id : String,
--   cover_url : String,
--   description: String,
--   rating: Int,
--   title: String
-- }

type alias Model = {movies : List Movie}

model : Model
model = { movies = Movies.moviesCollection }

-- decoder : Decoder -> Movie
-- decoder = map5 Movie (field "id" string) (field "cover_url" string)
--   (field "description" string) (field "rating" int) (field "title" string)

--UPDATE
type Msg = NoOp | Remove Movie | Reset

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


moviePortrait : Movie -> Html Msg
moviePortrait movie =
  div [Styles.portrait] [
      a [href movie.link] [Image.viewImg [Styles.poster] movie.poster]
    , div [Styles.title] [text (movie.title)]
    , div [Styles.title] [text (toString(movie.rating))]
    , button [ Styles.removeBtn, onClick (Remove movie) ] [ text "Remove" ]
    ]
