defmodule Aditya do
  import IO
  def abc do
      list = [1,2,3,4,5,6]
      list1 = []
      a = gets(" Enter the number")
      b = String.trim(a)
      number = String.to_integer(b)
      counter = 0
      value = 0
      delete(number, list, counter, list1, value)
  end
   def delete(number, list, counter, list1, value) do

      # IO.inspect counter

       #IO.inspect list
       if counter < number do
         value = Enum.at(list, 0)

         list1 = List.insert_at(list1, 0, value)
         list = List.delete_at(list,0)
         #IO.inspect list
         #IO.inspect list1
         delete(number, list, counter + 1, list1, value)

      else
        #Enum.reverse list1
        list1 = list ++ Enum.reverse(list1)
         #list
        end
   end
end
