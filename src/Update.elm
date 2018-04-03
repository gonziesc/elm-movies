module Update exposing(..)
import Msg exposing(..)
import Models exposing(..)
import Backend exposing(..)

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp ->
      model

    Reset ->
      {model | movies = moviesCollection}

    FilterName name ->
      {model | movies = filterMoviesByName name moviesCollection}
    IncrementLikes movieId ->
      {model | movies = incrementLikes movieId model.movies}
    ShowDialog ->
      {model | shouldShowDialog = True}
    HideDialog ->
      {model | shouldShowDialog = False}
    UpdatePreferencesKeywords keywords->
      {model | preferences =  Preferences keywords model.preferences.genre model.preferences.favoriteActor}
    UpdatePreferencesGenre genre->
      {model | preferences =  Preferences model.preferences.keywords genre model.preferences.favoriteActor}
    UpdatePreferencesActor actor->
      {model | preferences =  Preferences model.preferences.keywords model.preferences.genre actor }
    MatchPercentage ->
     {model | movies = calculateMatchPercentage model.movies model.preferences}
