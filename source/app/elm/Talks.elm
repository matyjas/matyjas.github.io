module Talks exposing (view)

import Html exposing (..)
import Html.Attributes exposing (id, href)

-- MODEL

type alias Talk =
    { title : String,
      event : String,
      url : String }

all : List Talk
all = [
 {title = "Pillarisation: modular architecture using pillars at Hotels.com",
  event = "SWMobile in Bristol",
  url = "https://www.meetup.com/swmobile/events/237190732/"},
     
 {title = "Chatbots - An Existential Crisis",
  event = "Mobile Shopping 2017",
  url = "http://mobileshoppingeu2017.wbresearch.com/maciej-matyjas-speaker"},
     
 {title = "What Hotels.com learned building a chatbot",
  event = "Digital Transformation Conf",
  url = "http://digitaltransformationconf.co.uk/"},

 {title = "What Hotels.com learned building a chatbot",
  event = "Apps World",
  url = "https://tmt.knect365.com/apps-world/speakers/maciej-matyjas-"},

 {title = "What is Elixir good for?",
  event = "Polyglot Tech London",
  url = "https://www.meetup.com/Polyglot-Tech-London/events/233382618/"},

 {title = "The Thing About Innovation",
  event = "TravelTech Innovation Summit",
 url = "http://www.luxatiainternational.com/Events/annual-mobile-first-travel-summit/"},

 {title = "The Most Powerful Tech Strategy",
  event = "Tech for Britian",
  url = "http://techforbritain.co.uk/"},

 {title = "Building Better Mousetraps with Reactive JS",
  event = "TECH.insight Disruptive technologies",
  url = "http://www.techinsight.io/event/london-april-2016/"},

 {title = "A Candid Conversation about Chatbots",
  event = "London Web",
  url = "https://www.meetup.com/londonweb/events/232583527/"},

 {title = "24 Hours of Elixir, Caffeine and Slack Bots",
  event = "Elixir London",
  url = "https://www.meetup.com/Elixir-London/events/228584240/"},

 {title = "Reviewing Code Reviews",
  event = "London Software Craftmanship Community",
  url = "https://www.meetup.com/london-software-craftsmanship/events/225941774/"} ]

-- VIEW

view : Html msg
view =
    article [id "Talks"] ( List.map renderTalk all )

renderTalk : Talk -> Html msg
renderTalk talk =
    section [] [
         h4 [] [ a [ href talk.url ] [ text talk.title ] ],
             text "@", text talk.event
        ]
