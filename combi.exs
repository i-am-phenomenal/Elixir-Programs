defmodule Aditya do
  def abc do
    list3 = []
      func1(["a","b","c","d"], 0)
   end
   def func1(list, counter) do
     IO.inspect list
     func3(list, counter, 0 )
   end
   def func3(list, counter, counter1) do
     if counter < length(list) do
       val = Enum.at(list, counter)
       func4(list, counter, counter1 + 1, val, [])
    else

   end
  end
   def func4(list, counter, counter1, val, list3) do
       if counter1 < length(list) do
         val1 = Enum.at(list, counter1)
         list3 = List.insert_at(list3, counter, val)
         list3 = List.insert_at(list3, counter1, val1)
         #IO.inspect list3
         func4(list, counter, counter1 + 1, val, list3)
       else
          IO.inspect list3
          func3(list, counter + 1, 0)
       end

   end
 end
