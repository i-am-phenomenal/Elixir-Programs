defmodule Aditya do
  import IO
  def abc do
    a = gets(" Enter the value of n")
    b = String.trim(a)
    num = String.to_integer(b)
    counter = 2
    list = [0,1]
    func2(list, counter, num)
  end
   def func2(list, counter, num) do
       sum = Enum.at(list, (counter - 2)) + Enum.at(list, (counter - 1))
     if counter <= num do
       list = List.insert_at(list, counter, sum)
       func2(list, counter + 1, num)
     else
       list
     end
   end
end
