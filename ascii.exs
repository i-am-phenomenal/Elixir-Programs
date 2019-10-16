defmodule Ascii do
    def abc do
      func(0, [])
     end
    def func(counter, list) do
      if counter < 100 do
        list = List.insert_at(list, counter, counter)
         IO.puts [counter + 10]
        func(counter + 1, list)
       end
      end
     end
