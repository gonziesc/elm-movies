module Backend exposing(..)
import Models exposing(Movie, Preferences)

filterMoviesByName : String -> List Movie -> List Movie
filterMoviesByName phrase = List.filter(\movie -> String.contains phrase movie.title)

incrementLikes : Int -> List Movie -> List Movie
incrementLikes id = List.map(\movie -> if movie.id == id then addLike movie else movie)

addLike : Movie -> Movie 
addLike movie = {movie | likes = movie.likes + 1}

calculateMatchPercentage : List Movie -> Preferences ->  List Movie 
calculateMatchPercentage movies preferences = List.map(\movie -> {movie | matchPercentage =  String.length (preferences.keywords)}) movies