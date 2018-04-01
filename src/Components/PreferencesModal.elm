module Components.PreferencesModal exposing (..)
import Html exposing (..)
import Dialog exposing (..)
import Models exposing (..)
import Msg exposing(..)

preferencesModal : Model -> Html Msg
preferencesModal model = 
  div
    []
    [ Dialog.view
        (if model.shouldShowDialog then
          Just { closeMessage = Just HideDialog
               , containerClass = Just "your-container-class"
               , header = Just (text "Alert!")
               , body = Just (p [] [text "Let me tell you something important..."])
               , footer = Nothing
               }
         else
          Nothing
        )
    ]