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
                      text "I am trying to improve my public speaking so I also have a little "
                     , a [ href "#Feedback" ] [ text "Feedback button." ]
                      ]
               , p [] [
                      text "Other places to find me on the web are under "
                     ,a [ href "#Links" ] [ text "Links." ]
                     ]
               , p [] [
                      text "Info about how this site was built is under "
                     , a [ href "#Meta" ] [ text "Meta" ]
                     , text " (PS It was fun :) ."
                     ]
               ]
