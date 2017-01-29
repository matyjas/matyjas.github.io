module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (id, class)
import Html.Events exposing (onClick)
import Talks exposing (Talk, all)
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
    case msg of
        Change newSection ->
            newSection

-- VIEW

view : Model -> Html Msg
view model =
    div [ id "content" ]
        [ navs model
        , contentForModel model ]

navs : Model -> Html Msg
navs model =
    h1 [] [ nav [] [
                 navSpan ( Change Matyjas ) "Matyjas"
                , navSpace ()
                , navSpan ( Change Talks ) "Talks"
                , navSpace ()
                , navSpan ( Change Links ) "Links"
                ]
          ]
        
navSpan : Msg -> String -> Html Msg
navSpan msg label =
    span [ onClick msg, class "nav" ] [ text label ]

navSpace : () -> Html Msg
navSpace () =
    span [ class "nav" ] [ text " | " ]
        
contentForModel : Model -> Html Msg
contentForModel model =
    case model of
        Matyjas ->
            renderMatyjas ()
        Talks ->
            div [] ( List.map renderTalk all )
        Links ->
            Links.view ()
        Widgets ->
            text "Widgets"
        Survey ->
            text "Survey"
        Colophon ->
            text "Colophon"

renderTalk : Talk -> Html Msg
renderTalk talk = article [] [
                   h3 [] [text talk.title ],
                       text "@", text talk.event
                  ]

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
