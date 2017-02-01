module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (id, class, classList, href)
import Html.Events exposing (onClick)
import Talks
import Links

main = Html.beginnerProgram { model = model,
                              view = view,
                              update = update }

-- MODEL

type Model = Matyjas | Talks | Links | Widgets | Survey | Meta

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
        [
        navs model
        , contentForModel model
        ]

navs : Model -> Html Msg
navs model =
    h1 [] [ nav [] [
                 navSpan ( Change Matyjas ) "Matyjas" model
                , navSpace ()
                , navSpan ( Change Talks ) "Talks" model
                , navSpace ()
                , navSpan ( Change Links ) "Links" model
                , navSpace ()
                , navSpan ( Change Meta ) "Meta" model
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
        Meta ->
            renderMeta ()

renderMatyjas : () -> Html Msg
renderMatyjas () = 
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
                     , text " (PS It was fun)."
                     ]
               ]

        
extractModel : Msg -> Model
extractModel msg =
    case msg of
        Change model -> model

selected : Msg -> Model -> Bool
selected msg model =
    if model == extractModel msg then True else False

renderMeta : () -> Html Msg
renderMeta () =
    article [] [
         p [] [ text "The source code for this site is on "
              , a [ href "https://github.com/matyjas/matyjas.github.io" ] [ text "github" ]
              , text " under the "
              , a [ href "https://github.com/matyjas/matyjas.github.io/tree/master/source" ] [ text "source directory. " ]
              , text "I used "
              , a [ href "http://elm-lang.org/" ] [ text "elm-lang" ]
              , text " to generate HTML and JS. The site is packaged with "
              , a [ href "http://brunch.io/" ] [ text "brunch. " ]
              , text "The heading font is "
              , a [ href "http://iotic.com/averia/" ] [ text "Averia " ]
              , text "which has a wonderful story."
              ]
         ]
