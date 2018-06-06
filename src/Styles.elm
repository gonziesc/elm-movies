module Styles exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

modal =
  style
    [ ("background-color", "#FFFFE0")
    , ("margin", "auto")
    , ("align-items", "center") ]

removeBtn =
  style
  [ ("border-radius", "5px")
  , ("background-color", "#1E90FF")
  , ("height", "30px")
  , ("width", "100px")
  , ("color", "white")
  , ("font-size", "20px") ]

resetBtn =
  style
  [ ("border-radius", "10px")
  , ("display", "inline-block")
  , ("height", "50px")
  , ("width", "150px")
  , ("background-color", "#FFFFE0")
  , ("color", "#8B0000")
  , ("font-size", "20px")
  , ("border", "1px solid black") ]

gallery =
  style
    [ ("display", "flex")
    , ("flex-flow", "row wrap")
    , ("padding", "50px") ]

portrait =
  style
    [ ("display", "flex")
    , ("flex-direction", "column")
    , ("align-items", "center")
    , ("margin-right", "50px") ]

grandTitle =
  style
    [ ("font-size", "70px")
    , ("margin-bottom", "30px")
    , ("font-weight", "bold")
    , ("font-style", "oblique")
    , ("font-family", "Verdana") ]

poster =
  style
    [ ("height", "400px")
    , ("width", "250px")
    , ("margin-bottom", "10px") ]

title =
  style
    [ ("font-size", "30px")
    , ("margin-bottom", "5px")]

likeButton =
  style
    [ ("margin-top", "5px"),
    ("text-align", "center")
    ]
navbarText =
  style
  [("color", "white")]
portraitWrapper =
  style
  [("margin","auto"),
  ("width", "250px")
  ]
