module Feedback exposing (view)

import Html exposing (Html, article)
import Html.Attributes exposing (property, id)
import Html.Attributes exposing (id, class, classList, href)
import Json.Encode exposing (string)

-- View

view : Html msg
view =
    article [ id "Feedback", property  "innerHTML" <| string typeformButton ] []

typeformButton : String
typeformButton =
    "<a class='typeform-share button' href='https://matyjas.typeform.com/to/dXro9E' data-mode='1' target='_blank'>Super presentation survey under here, click me!</a>"
        
typeformWidget : String
typeformWidget =
    "<div class='typeform-widget' data-url='https://matyjas.typeform.com/to/dXro9E' data-text='presentation-feedback' style='width:90%;height:600px;'></div><div style='font-family: Sans-Serif;font-size: 12px;color: #999;opacity: 0.5; padding-top: 5px;'>Powered by<a href='https://www.typeform.com/examples/?utm_campaign=dXro9E&amp;utm_source=typeform.com-3081221-Basic&amp;utm_medium=typeform&amp;utm_content=typeform-embedded-poweredbytypeform&amp;utm_term=EN' style='color: #999' target='_blank'>Typeform</a></div>"


