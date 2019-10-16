defmodule Aditya do
     def abc do
        func([25, 45, 2, 30, 67], [], length([25, 45, 2, 30, 67]), 0)
     end
    def func([headofthelist | tailoflist], list, lengthoflist, listcounter) do
       if length(tailoflist) != 0 do
        list = List.insert_at(list,0, headofthelist)
        IO.inspect list
        IO.inspect listcounter
        func(tailoflist, list, lengthoflist, listcounter + 1)
        end
      end
   end
