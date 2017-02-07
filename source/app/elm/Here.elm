module Here exposing (view)

import Html exposing (..)
import Html.Attributes exposing (id, class, classList, href)
import Html.Events exposing (onClick)

import Types exposing (..)

-- VIEW

view : Html Msg
view =
    article [] [ p [] [ text "Hi! Thanks for visiting! My name is Maciej Matyjas and here is a list of my stuff." ]
               , p [] [
                      text "I have presented a number of talks over the last few years. Please find a list of them under "
                     , span [ onClick (Change Talks), class "nav" ] [ text "Talks." ]
                     ]
               , p [] [
                      text "The classic list of places to find me on the web is under "
                     ,span [ onClick (Change Links), class "nav" ] [ text "Links." ]
                     ]
               , p [] [
                      text "Info about how this site was built is under "
                     , span [ onClick (Change Meta), class "nav" ] [ text "Meta" ]
                     , text " (PS It was fun!)."
                     ]
               ]
