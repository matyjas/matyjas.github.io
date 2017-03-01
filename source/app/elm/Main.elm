module Main exposing (main)

import RouteUrl exposing (RouteUrlProgram)
import Navigation exposing (Location)
import RouteUrl exposing (UrlChange)

import Html exposing (..)
import Html.Attributes exposing (id, class, classList, href)
import Html.Events exposing (onClick)

import Types exposing (..)

import Talks
import Links
import Feedback
import Meta
import Here

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

-- INIT

init : (Model, Cmd Msg)
init =
    (Here, Cmd.none)

-- UPDATE

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
                 navSpan ( Change Here ) "Here" model
                , navSpace ()
                , navSpan ( Change Talks ) "Talks" model
                , navSpace ()
                , navSpan ( Change Links ) "Links" model
                , navSpace ()
                , navSpan ( Change Feedback ) "Feedback" model
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
        Here ->
            Here.view
        Talks ->
            Talks.view
        Links ->
            Links.view
        Widgets ->
            text "Widgets"
        Feedback ->
            Feedback.view
        Meta ->
            Meta.view
        
extractModel : Msg -> Model
extractModel msg =
    case msg of
        Change model -> model

selected : Msg -> Model -> Bool
selected msg model =
    if model == extractModel msg then True else False

-- Subs

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

-- Routing

location2messages : Location -> List Msg
location2messages location =
    case (hashSuffix location) of
        Just "talks" -> [ Change Talks ]
        Just "links" -> [ Change Links ]
        Just "feedback" -> [ Change Feedback ]
        Just "meta" -> [ Change Meta ]
        Just _ -> [ Change Here ]
        Nothing -> [Change Here ]

        
delta2url : Model -> Model -> Maybe UrlChange
delta2url previous current =
    Nothing

hashSuffix : Location -> Maybe String
hashSuffix location =
    String.split "#" location.href
        |> List.drop 1 
        |> List.head 
