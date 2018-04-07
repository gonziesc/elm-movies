module Components.Navbar exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Bootstrap.Form as Form
import Bootstrap.Form.Input as Input
import Html.Events exposing (onInput)
import Msg exposing(..)

navbar : Html Msg
navbar = 
  nav[class "navbar navbar-dark bg-dark" ]
  [
    a [ class "navbar-brand", href "#" ] [ text "PdeP-Flix" ],
      Form.formInline [] [
        Input.text [ Input.attrs [class "mx-sm-3", placeholder "filter movies", onInput FilterName ]
      ] 
   ]
 ]
