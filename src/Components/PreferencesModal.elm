module Components.PreferencesModal exposing (..)
import Html exposing (..)
import Dialog exposing (..)
import Models exposing (..)
import Msg exposing(..)
import Styles exposing (..)
import Html.Events exposing (onClick)
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
                        div[Styles.gallery] [input [ value (case model.preferences.keywords of 
                          Nothing -> 
                            "" 
                          Just keywords -> 
                            String.join " " keywords )  
                        ,placeholder "enter your keywords separated with a space"] [],
                        input [ value (case model.preferences.genre of 
                          Nothing -> 
                            "" 
                          Just genre -> 
                            genre )  
                        ,placeholder "enter your favorite genre"] [],
                        input [ value (case model.preferences.favoriteActor of 
                          Nothing -> 
                            "" 
                          Just actor -> 
                            actor )  
                        ,placeholder "enter your favorite actor"] [],
                         button [ ] [ text "Add movie preferences" ]]
  ])
               , footer = Nothing
               }
         else
          Nothing
        )
    ]