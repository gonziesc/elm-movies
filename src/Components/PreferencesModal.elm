module Components.PreferencesModal exposing (..)
import Html exposing (..)
import Dialog exposing (..)
import Models exposing (..)
import Msg exposing(..)
import Styles exposing (..)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing(..)

preferencesModal : Model -> Html Msg
preferencesModal model = 
  div
    []
    [ Dialog.view
        (if model.shouldShowDialog then
          Just { closeMessage = Just HideDialog
               , containerClass = Just "your-container-class"
               , header = Just (text "Preferences")
               , body = Just ( div [Styles.mainPage] [
                        div[Styles.gallery] [input [ value model.preferences.keywords
                        ,placeholder "enter your keywords separated with a space",
                        onInput UpdatePreferencesKeywords] [],
                        input [ value  model.preferences.genre 
                        ,placeholder "enter your favorite genre",
                        onInput UpdatePreferencesGenre] [],
                        input [ value model.preferences.favoriteActor
                        ,placeholder "enter your favorite actor",onInput UpdatePreferencesActor] [],
                         button [ onClick MatchPercentage ] [ text "Add movie preferences" ]]
  ])
               , footer = Nothing
               }
         else
          Nothing
        )
    ]