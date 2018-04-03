module Msg exposing(..)
import Models exposing (..)

type Msg = NoOp 
    | Remove Movie 
    | Reset 
    | FilterName String 
    | IncrementLikes Int 
    | ShowDialog
    | HideDialog
    | UpdatePreferencesKeywords String
    | UpdatePreferencesGenre String
    | UpdatePreferencesActor String 