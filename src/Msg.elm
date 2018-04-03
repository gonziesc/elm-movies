module Msg exposing(..)
import Models exposing (..)

type Msg = NoOp
    | Reset
    | FilterName String
    | IncrementLikes Int
    | ShowDialog
    | HideDialog
    | UpdatePreferencesKeywords String
    | UpdatePreferencesGenre String
    | UpdatePreferencesActor String
    | MatchPercentage
