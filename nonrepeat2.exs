defmodule Aditya do
   import IO
   def abc do
      list = ["Hello", " World"]
      list2 = []
      counter = 0
      value = ""
      value1 = ""
      func2(list, counter, value, list2, value1)
   end
    def func2(list, counter, value, list2, value1) do
         value = Enum.at(list, counter)
         value1 = String.reverse(value)
          IO.inspect value1
        if counter == 2 do
              #list2
               value1
          else
            
          #  list2 = List.insert_at(list2, value1, 0)
          #   List.insert_at(list, value1, counter)
            func2(list, counter + 1, value, list2, value1)
        end
      end
    end
