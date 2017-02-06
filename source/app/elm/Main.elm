module Main exposing (main)

import RouteUrl exposing (RouteUrlProgram)
import Navigation exposing (Location)
import RouteUrl exposing (UrlChange)

import Html exposing (..)
import Html.Attributes exposing (id, class, classList, href)
import Html.Events exposing (onClick)
import Talks
import Links
import Survey

main : RouteUrlProgram Never Model Msg
main =
    RouteUrl.program
    { delta2url = delta2url
    , location2messages = location2messages
    , update = update
    , view = view
    , init = init
    , subscriptions = subscriptions
    }

-- MODEL

type Model = Matyjas | Talks | Links | Widgets | Survey | Meta

-- INIT

init : (Model, Cmd Msg)
init =
    (Matyjas, Cmd.none)

-- UPDATE

type Msg = Change Model

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( extractModel msg, Cmd.none )

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
            Survey.view ()
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
                     , text " (PS It was fun!)."
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
              , text " to generate HTML and JS; "
              , a [ href "http://sass-lang.com/" ] [ text "sass" ]
              , text " to generate CSS. The site is packaged with "
              , a [ href "http://brunch.io/" ] [ text "brunch. " ]
              ]
         ]

-- Subs

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

-- Routing


location2messages : Location -> List Msg
location2messages location =
    case (hashSuffix location) of
        Just "survey" -> [ Change Survey ]
        Just _ -> [ Change Matyjas ]
        Nothing -> [Change Matyjas ]

        
delta2url : Model -> Model -> Maybe UrlChange
delta2url previous current =
    Nothing

hashSuffix : Location -> Maybe String
hashSuffix location =
    List.head (List.drop 1 (String.split "#" location.href))
