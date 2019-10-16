defmodule Aditya do
   import IO
   def abc do
       a = gets(" Enter any number")
       b = String.trim(a)
       str = ""
       list = []
       len = String.length(b)
       counter = len
       counter1 = 0
       #String.reverse(b)
       func2(b, str, counter, list, counter1)
     end
     def func2(b, str, counter, list, counter1) do
        value = String.at(b, counter)
         if (String.length(str) != String.length(b)) do
            list = List.insert_at(list,value,counter1)
            IO.inspect list
         else
            func2(b, str, counter - 1, list, counter1 + 1)
         end
     end
     # head tail logiv for the given problem
     def func3 do
       list = [1,2,3,4]
       list = [1 | list]
     end
   end
