module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (id, class)
import Html.Events exposing (onClick)
import Talks exposing (Talk, all)

main = Html.beginnerProgram { model = model,
                              view = view,
                              update = update }

-- MODEL

type Model = MM | Talks | Links | Widgets | Survey | Colophon

model : Model
model = MM

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
        [ h1 [] [ nav [] [ span [ onClick ( Change MM ), class "nav" ] [ text "MM" ]
                 , span [ class "nav" ] [ text " | " ]
                 , span [ onClick ( Change Talks ), class "nav"  ] [ text "Talks" ]
                 ] ]
        , contentForModel model ]
    
contentForModel : Model -> Html Msg
contentForModel model =
    case model of
        MM ->
            renderMM ()
        Talks ->
            div [] ( List.map renderTalk all )
        Links ->
            text "Links"
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

renderMM : () -> Html Msg
renderMM () = 
    section [] [ text "Thanks for visiting my web site! My name is Maciej Matyjas and I have presented a number of talks over the last year. Please find a list of them under the `Talks` header." ]
