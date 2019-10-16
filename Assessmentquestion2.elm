-- IT IS DISPLAYING THE RESULT ONLY IF THE WHOLE STRING IS ENTERED
import Html exposing(..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import Array exposing (..)
import Tuple exposing (..)
import Dict exposing (..)
import String exposing (..)
import Task exposing (..)
main =
    Html.program { init = ( initModel, Cmd.none ), update = update, subscriptions = subscriptions, view = view }
type alias Model =
{ mylist : List String
, input1 : String
, mylist2 : List String
}
initModel : Model
initModel =
 { mylist = ["Hello", "Everyone", "Coffee" , "Tea", "Coffee"]
 , input1 = ""
 , mylist2 = []
 }
view model =
 div[]
 [ input[type_ " text" , placeholder " Enter String to be searched", onInput Value1][]
 , br[][]
-- , button [onClick Value2][text " Start"]
  -- call a function here
 , div[][text (toString model.mylist2)]
 ]
type Msg = Value1 String | Value2 | NoOp
update msg model =
  case msg of
     Value1 str ->
        ({model | input1 = str },Task.perform identity ( Task.succeed Value2))
     Value2 ->
       ({model | mylist2 = check model.mylist model.input1 model.mylist2 }, Cmd.none)
     NoOp ->
       (model, Cmd.none)
subscriptions _ =
 Sub.none
check myli inpt myli2 =
   if (List.member inpt myli) ==  True then
     inpt :: myli2
   else
     myli2
     
