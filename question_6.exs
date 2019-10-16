defmodule Aditya do
     import IO
     def abc(list) do
       list = []
      counter = 0
      a = gets("Enter any element")
       #ele = List.first(list)
       #list = List.delete_at(list, counter)
      b = String.trim(a)
      list1 = list ++ b
      choice = gets("Enter your choice Y/N")
      if choice  == "Y" || "y" do
        abc(list)
      else
         list1
    end
  end
end
      
