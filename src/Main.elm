module Main exposing (main)

import Browser
import Html 
import Html.Attributes  as A
import Html.Events  as E
import Http
import Json.Decode as D exposing (Decoder, field, string)



-- MAIN


main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }

-- MODEL


type alias Model
  = { greet : String }


init : () -> (Model, Cmd Msg)
init _ =
  (Model "Hello!", Cmd.none)


-- UPDATE

type Msg
  = Greet

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Greet ->
      (model , Cmd.none) 


-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- VIEW

view : Model -> Html.Html Msg
view model =
  Html.div [] [ Html.text model.greet]