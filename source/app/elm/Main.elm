module Main exposing (main)

import Html exposing (Html, div)
import Html.Attributes exposing (id, class, classList, href)

import Talks
import Links
import Meta
import Here
import Feedback

main =
    Html.beginnerProgram { model = model, view = view, update = update }

-- MODEL

type alias Model =
    {}

model: Model
model = {}

-- UPDATE

type Msg = Change Model

update : Msg -> Model -> Model
update msg model =
    {}

-- VIEW

view : Model -> Html Msg
view model =
    div [ id "content" ]
        [
         Here.view
        ,Talks.view
        ,Links.view
        ,Feedback.view
        ,Meta.view
        ]

            

