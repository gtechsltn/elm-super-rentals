module Route exposing (Route(..), fromUrl)


import Url
import Url.Parser exposing (Parser, map, oneOf, parse, s, top)


type Route
  = Home
  | About
  | Contact
  | NotFound


route : Parser (Route -> a) a
route =
  oneOf
    [ map Home top
    , map About (s "about")
    , map Contact (s "getting-in-touch")
    ]


fromUrl : Url.Url -> Route
fromUrl url =
  Maybe.withDefault NotFound (parse route url)
