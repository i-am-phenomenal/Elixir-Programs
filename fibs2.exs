defmodule Aditya do
   import IO
   def abc do
     a = gets(" Enter any number")
     b = String.trim(a)
     number = String.to_integer(b)
     counter = 2
     list = [0,1]
     func2(number, counter, list, num2, num3)
     #num1 = 0
     num2 = 1
     num3 = 1
   end
   def func2(number, counter, list, num2, num3) do
      if counter < number do
        num3 = num3 + num2
        list = List.insert_at(list, counter, num3)
        num2  = num3
        func2(number, counter + 1, list, num2, num3)
      else
         list
       end
   end
end
