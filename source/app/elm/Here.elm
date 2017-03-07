module Here exposing (view)

import Html exposing (..)
import Html.Attributes exposing (id, href)

-- VIEW

view : Html msg
view =
    article [] [ p [] [ text "Hi! Thanks for visiting! My name is Maciej Matyjas and here is a list of my stuff." ]
               , p [] [
                      text "The main attraction here is a long list of "
                     , a [ href "#Talks" ] [ text "Talks." ]
                     ]
               , p [] [
                      text "There is also a classic list of places to find me on the web is under "
                     ,a [ href "#Links" ] [ text "Links." ]
                     ]
               , p [] [
                      text "Info about how this site was built is under "
                     , a [ href "#Meta" ] [ text "Meta" ]
                     , text " (PS It was fun :) ."
                     ]
               ]
