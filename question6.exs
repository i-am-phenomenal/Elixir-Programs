defmodule Aditya do
   import IO
     def abc do
       #counter = 0
       #list = []
    #  a = gets("Enter the number")
    #  b = String.trim(a)
    #  List.insert_at(list, counter, b)
       c = gets(" Enter your choice Y/N")
       d = String.trim(c)
       if d == "Y" || d == "y" do
        efg(list)
       else
        efg(list)
       end
    end
   def efg(list) do
     a = gets("Enter the number")
     b = String.trim(a)
    # List.insert_at(list, counter, b)
     list ++ b
     #puts list
     abc
   end
  end
