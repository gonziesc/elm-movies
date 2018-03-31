module Backend exposing(..)
import Models exposing(Movie)

filterMoviesByName : String -> List Movie -> List Movie
filterMoviesByName phrase = List.filter(\movie -> String.contains phrase movie.title)