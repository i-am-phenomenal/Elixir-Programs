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
     beginnerProgram {model = model, update = update , view = view}
type alias Model =
 { input1 : String
 , input2 : String
 }
model : Model
model =
  { input1 = ""
  , input2 = ""
  }
view model =
  div[]
  [ input [type_ " text" , placeholder "Enter String", onInput Value1][]
  , br[][]
  , button[onClick Value2][text "modify"]
   -- call  a funtion here
  , div[][text ( toString model.input2)]

  ]
type Msg = Value1 String | Value2 | None
update msg model =
   case msg of
      Value1 str ->
       {model | input1 = str}
      Value2 ->
      { model | input2 = modify model.input1}
      None ->
       model
modify str1 =
  --  String.cons 'toUpper
  let
    a = String.dropLeft 1 str1
    d = String.toUpper (String.dropRight (String.length a) str1)
   -- d = String.dropLeft 1 str1
    b = String.toLower a
    --c = b :: d
    c = String.append d b
  in
    c 
