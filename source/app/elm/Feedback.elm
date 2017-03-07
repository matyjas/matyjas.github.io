module Feedback exposing (view)

import Html exposing (Html, article)
import Html.Attributes exposing (property, id)
import Html.Attributes exposing (id, class, classList, href)
import Json.Encode exposing (string)

-- View

view : Html msg
view =
    article [ id "Feedback", property  "innerHTML" <| string typeformWidget ] []

typeformButton : String
typeformButton =
    "<a class='typeform-share button' href='https://matyjas.typeform.com/to/dXro9E' data-mode='1' target='_blank'>Super presentation survey under here, click me!</a><script>(function(){var qs,js,q,s,d=document,gi=d.getElementById,ce=d.createElement,gt=d.getElementsByTagName,id='typef_orm_share',b='https://s3-eu-west-1.amazonaws.com/share.typeform.com/';if(!gi.call(d,id)){js=ce.call(d,'script');js.id=id;js.src=b+'share.js';q=gt.call(d,'script')[0];q.parentNode.insertBefore(js,q)}id=id+'_';if(!gi.call(d,id)){qs=ce.call(d,'link');qs.rel='stylesheet';qs.id=id;qs.href=b+'share-button.css';s=gt.call(d,'head')[0];s.appendChild(qs,s)}})()</script>"
        
typeformWidget : String
typeformWidget =
    "<div class='typeform-widget' data-url='https://matyjas.typeform.com/to/dXro9E' data-text='presentation-feedback' style='width:100%;height:600px;'></div><div style='font-family: Sans-Serif;font-size: 12px;color: #999;opacity: 0.5; padding-top: 5px;'>Powered by<a href='https://www.typeform.com/examples/?utm_campaign=dXro9E&amp;utm_source=typeform.com-3081221-Basic&amp;utm_medium=typeform&amp;utm_content=typeform-embedded-poweredbytypeform&amp;utm_term=EN' style='color: #999' target='_blank'>Typeform</a></div>"
