module Talks exposing (view)

import Html exposing (..)
import Html.Attributes exposing (id, href)

-- MODEL

type alias Talk =
    { title : String,
      event : String,
      url : String,
      video : Maybe String }

all : List Talk
all = [
 {title = "How do you avoid your chatbot going rogue?",
  event = "Apps World Evolution - Bot World",
  url = "http://techxlr82017.mapyourshow.com/7_0/sessions/session-details.cfm?ScheduleID=1842",
  video = Nothing },

 {title = "Opening the door to innovation and winning the next generation of customers",
  event = "Millennial 20/20",
  url = "http://millennial20-20.com/london2017/speakers/",
  video = Nothing },

 {title = "The Not-a-Dojo Swift Challenge 👩‍💻👨‍💻 ",
  event = "Swift London",
  url = "https://www.meetup.com/swiftlondon/events/239383089/",    
  video = Nothing },
     
 {title = "Pillarisation: modular architecture using pillars at Hotels.com",
  event = "Swift London",
  url = "https://www.meetup.com/swiftlondon/events/238562063/",
  video = Just "https://skillsmatter.com/skillscasts/10045-pillarisation-modular-architecture-at-hotels-com" },
      
 {title = "Pillarisation: modular architecture using pillars at Hotels.com",
  event = "SWMobile in Bristol",
  url = "https://www.meetup.com/swmobile/events/237190732/",
  video = Nothing },
     
 {title = "Chatbots - An Existential Crisis",
  event = "Mobile Shopping 2017",
  url = "http://mobileshoppingeu2017.wbresearch.com/maciej-matyjas-speaker",
  video = Nothing },
     
 {title = "What Hotels.com learned building a chatbot",
  event = "Digital Transformation Conf",
  url = "http://digitaltransformationconf.co.uk/",
  video = Nothing },

 {title = "What Hotels.com learned building a chatbot",
  event = "Apps World",
  url = "https://tmt.knect365.com/apps-world/speakers/maciej-matyjas-",
  video = Nothing },

 {title = "What is Elixir good for?",
  event = "Polyglot Tech London",
  url = "https://www.meetup.com/Polyglot-Tech-London/events/233382618/",
  video = Nothing },

 {title = "The Thing About Innovation",
  event = "TravelTech Innovation Summit",
  url = "http://www.luxatiainternational.com/Events/annual-mobile-first-travel-summit/",
  video = Nothing },

 {title = "The Most Powerful Tech Strategy",
  event = "Tech for Britian",
  url = "http://techforbritain.co.uk/",
  video = Nothing },

 {title = "Building Better Mousetraps with Reactive JS",
  event = "TECH.insight Disruptive technologies",
  url = "http://www.techinsight.io/event/london-april-2016/",
  video = Nothing },

 {title = "A Candid Conversation about Chatbots",
  event = "London Web",
  url = "https://www.meetup.com/londonweb/events/232583527/",
  video = Nothing },

 {title = "24 Hours of Elixir, Caffeine and Slack Bots",
  event = "Elixir London",
  url = "https://www.meetup.com/Elixir-London/events/228584240/",
  video = Nothing },

 {title = "Reviewing Code Reviews",
  event = "London Software Craftmanship Community",
  url = "https://www.meetup.com/london-software-craftsmanship/events/225941774/",
  video = Just "https://skillsmatter.com/skillscasts/6958-code-reviews-are-fast"
 } ]

-- VIEW

view : Html msg
view =
    article [id "Talks"] ( List.map renderTalk all )

renderTalk : Talk -> Html msg
renderTalk talk =
    section [] [
         h4 [] [ a [ href talk.url ] [ text talk.title ] ],
             text "@", text talk.event,
             text ", ",
             maybeRenderVideoLink talk
        ]

maybeRenderVideoLink : Talk -> Html msg
maybeRenderVideoLink talk =
    case talk.video of
        Nothing -> text ""
        Just link -> a [ href link ] [ text "» video" ]
