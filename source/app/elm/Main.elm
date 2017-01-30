module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (id, class, classList)
import Html.Events exposing (onClick)
import Talks
import Links

main = Html.beginnerProgram { model = model,
                              view = view,
                              update = update }

-- MODEL

type Model = Matyjas | Talks | Links | Widgets | Survey | Colophon

model : Model
model = Matyjas

-- UPDATE

type Msg = Change Model

update : Msg -> Model -> Model
update msg model =
    extractModel msg

-- VIEW

view : Model -> Html Msg
view model =
    div [ id "content" ]
        [ navs model
        , contentForModel model ]

navs : Model -> Html Msg
navs model =
    h1 [] [ nav [] [
                 navSpan ( Change Matyjas ) "Matyjas" model
                , navSpace ()
                , navSpan ( Change Talks ) "Talks" model
                , navSpace ()
                , navSpan ( Change Links ) "Links" model
                ]
          ]
        
navSpan : Msg -> String -> Model -> Html Msg
navSpan msg label model =
    span [ onClick msg, classList [ ("nav", True)
                                  , ("selected", selected msg model)]
         ] [ text label ]

navSpace : () -> Html Msg
navSpace () =
    span [ class "nav" ] [ text " | " ]
        
contentForModel : Model -> Html Msg
contentForModel model =
    case model of
        Matyjas ->
            renderMatyjas ()
        Talks ->
            Talks.view ()
        Links ->
            Links.view ()
        Widgets ->
            text "Widgets"
        Survey ->
            text "Survey"
        Colophon ->
            text "Colophon"

renderMatyjas : () -> Html Msg
renderMatyjas () = 
    article [] [ p [] [ text "Hi! Thanks for visiting! My name is Maciej Matyjas and here is a list of my stuff." ]
               , p [] [ text "I have presented a number of talks over the last few years. Please find a list of them under the" ,
                            span [ onClick (Change Talks) ] [ text " | Talks | " ],
                            text "header." ]
               , p [] [ text "A typical list of places to find me on the web is under the",
                            span [ onClick (Change Links) ] [ text " | Links | " ],
                            text "header." ]
               ]

        
extractModel : Msg -> Model
extractModel msg =
    case msg of
        Change model -> model

selected : Msg -> Model -> Bool
selected msg model =
    if model == extractModel msg then True else False
