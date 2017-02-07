module Talks exposing (view)

import Html exposing (..)

-- MODEL

type alias Talk =
    { title : String,
      event : String }

all : List Talk
all = [
 {title = "Chatbots - An Existential Crisis",
  event = "Mobile Shopping 2017"},
     
 {title = "What Hotels.com learned building a chatbot",
  event = "Digital Transformation Conf"},

 {title = "What Hotels.com learned building a chatbot",
  event = "Apps World"},

 {title = "What is Elixir good for?",
  event = "Polyglot Tech London"},

 {title = "The Thing About Innovation",
  event = "TravelTech Innovation Summit"},

 {title = "The Most Powerful Tech Strategy",
  event = "Tech for Britian"},

 {title = "Building Better Mousetraps with Reactive JS",
  event = "TECH.insight Disruptive technologies" },

 {title = "A Candid Conversation about Chatbots",
  event = "London Web"},

 {title = "24 Hours of Elixir, Caffeine and Slack Bots",
  event = "Elixir London"},

 {title = "Reviewing Code Reviews",
  event = "London Software Craftmanship Community"} ]


-- https://www.meetup.com/Polyglot-Tech-London/events/233382618/
-- http://mobileshoppingeu.wbresearch.com/maciej-matyjas-speaker
-- http://www.luxatiainternational.com/Events/annual-mobile-first-travel-summit/
-- https://tmt.knect365.com/apps-world/speakers/maciej-matyjas-
-- http://www.techinsight.io/event/london-april-2016/


-- VIEW

view : Html msg
view =
    div [] ( List.map renderTalk all )

renderTalk : Talk -> Html msg
renderTalk talk =
    article [] [
         h3 [] [text talk.title ],
             text "@", text talk.event
        ]
