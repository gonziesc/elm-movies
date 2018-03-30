import Html exposing (..)
import Html.Events exposing (onClick)
import Json.Decode exposing (..)

main =
  Html.beginnerProgram { model = 0, view = view }

type alias Movie = {
  id : String, 
  cover_url : String,
  description: String,
  rating: Int,
  title: String 
}

decoder : Decoder -> Movie
decoder = map5 Movie (field "id" string) (field "cover_url" string) 
  (field "description" string) (field "rating" int) (field "title" string)

view model =
  div []
    [div [] [ text (toString model) ]]

