module Meta exposing (view)

import Html exposing (..)
import Html.Attributes exposing (href, id)

-- VIEW

view : Html msg
view =
    article [id "Meta"] [
         p [] [ text "The source code for this site is on "
              , a [ href "https://github.com/matyjas/matyjas.github.io" ] [ text "github" ]
              , text " under the "
              , a [ href "https://github.com/matyjas/matyjas.github.io/tree/master/source" ] [ text "source directory. " ]
              , text "I used "
              , a [ href "http://elm-lang.org/" ] [ text "elm-lang" ]
              , text " to generate HTML and JS; "
              , a [ href "http://sass-lang.com/" ] [ text "sass" ]
              , text " to generate CSS. The site is packaged with "
              , a [ href "http://brunch.io/" ] [ text "brunch. " ]
              ]
        ]

