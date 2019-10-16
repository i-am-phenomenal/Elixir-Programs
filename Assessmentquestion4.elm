import Html exposing(..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import Array exposing (..)
import Tuple exposing (..)
import Dict exposing (..)
import Task exposing (..)
main =
     Html.program { init = ( initModel, Cmd.none ), update = update, subscriptions = subscriptions, view = view }
type alias Model =
 {
   name : String
 , mylist1 : List String
 , mylist2 : List String
 , result :  List Bool
 }
initModel : Model
initModel =
 { name = ""
 , mylist1 = []
 , mylist2 = []
 , result = []
 }
view model =
 div[]
 [ input[type_ " text", placeholder "Enter String", onInput Value1][]
 , br[][]
 , button[onClick Value2][text " Append to List"]
 , br[][]
 , button[onClick Value3][text "Check"]
 -- call a function here
 , div [] (List.reverse (List.map (\x -> div [] [text x] ) model.mylist1))
 , div [][text (toString model.result)]
 ]
type Msg = Value1 String | Value2 | Value3 | Value4 | NoOp
update msg model =
  case msg of
    Value1 str ->
      ({ model | name = str }, Cmd.none)
    Value2 ->
     ({ model | mylist1 = model.name :: model.mylist1 }, Cmd.none)
    Value3 ->
     ({ model | mylist2 = List.reverse model.mylist1 }, Task.perform identity ( Task.succeed Value4))
    Value4 ->
     ({ model | result =  (verify model.mylist1 model.mylist2) :: model.result}, Cmd.none)
    NoOp ->
      (model, Cmd.none)
subscriptions _ =
   Sub.none
verify li1 li2 =
   if li1 == li2 then
     True
   else
     False
