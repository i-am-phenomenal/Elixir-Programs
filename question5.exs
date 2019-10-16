defmodule Aditya do
   import IO
   def abc do
    counter = 0
    a = gets(" enter string ")
    list = []
    b = String.trim(a)
    efg(b ,counter, list)
  end
   def efg(b, counter, list) do

      if counter >= String.length(b) do
        #f = String.at(b, String.length(b))
        #abcd(f, counter)
        List.insert_at(list, counter, String.at(b, String.length(b)))
      else
        #e = String.at(b, counter)
        #puts e
        List.insert_at(list, counter, String.at(b, counter))
        #counter = counter + 1
         efg(b, counter + 1, list)
      end
    end
  end
