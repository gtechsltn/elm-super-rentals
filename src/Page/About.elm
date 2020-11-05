module Page.About exposing (view)


import Html exposing (..)
import Html.Attributes exposing (..)
import Route
import Widget.Jumbo


view : List (Html msg)
view =
  [ Widget.Jumbo.view
      [ h2 [] [ text "About Super Rentals" ]
      , p []
          [ text "The Super Rentals website is a delightful project created to explore Ember. By building a property rental site, we can simultaneously imagine traveling AND building Ember applications." ]
      , a [ href (Route.href Route.Contact), class "button" ] [ text "Contact Us" ]
      ]
  ]