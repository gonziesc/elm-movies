module Types exposing (..)

type alias Movie = {
  id: Int,
  poster : Image,
  title: String,
  rating: Float,
  genre: List String,
  link: String
}

type alias Image = {
  url : String,
  width : Int,
  height : Int
}

type alias Model = {movies : List Movie}

type Msg = NoOp | Remove Movie | Reset