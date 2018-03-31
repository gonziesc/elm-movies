module Update exposing(..)
import Msg exposing(..)
import Models exposing(..)
import Backend exposing(..)

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp ->
      model

    Remove movie ->
      {model | movies = List.filter (\x -> x.id /= movie.id) model.movies}

    Reset ->
      {model | movies = moviesCollection}

    FilterName name -> 
      {model | movies = filterMoviesByName name model.movies}
