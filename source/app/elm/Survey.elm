module Survey exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (property, attribute, style)
import Json.Encode exposing (string)

-- View

view : () -> Html msg
view model =
      div [ property  "innerHTML" <| string typeformLink  ] []

typeformLink : String
typeformLink =
    "<a class='typeform-share link' href='https://matyjas.typeform.com/to/dXro9E' data-mode='1' target='_blank'>Super presentation survey under here, server up by the wonderful Typeform</a><script>(function(){var qs,js,q,s,d=document,gi=d.getElementById,ce=d.createElement,gt=d.getElementsByTagName,id='typef_orm_share',b='https://s3-eu-west-1.amazonaws.com/share.typeform.com/';if(!gi.call(d,id)){js=ce.call(d,'script');js.id=id;js.src=b+'share.js';q=gt.call(d,'script')[0];q.parentNode.insertBefore(js,q)}})()</script>"
