module Links exposing (view)

import Html exposing (..)
import Html.Attributes exposing (href, id)

-- VIEW

view : Html msg
view =
    article [ id "Links" ] [
    ul [] [
         li [] [ a [ href "https://twitter.com/matyjas" ] [ text "@matyjas" ] ]
        , li [] [ a [ href "https://uk.linkedin.com/in/matyjas" ] [ text "linkedin/matyjas" ] ]
        , li [] [ a [ href "https://github.com/matyjas" ] [ text "github/matyjas" ] ]
        ]
        ]
