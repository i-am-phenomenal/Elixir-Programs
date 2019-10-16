defmodule Aditya do
   import IO
   def abc do
      d = gets("Enter any number")
      b = String.trim(d)
      c = String.to_integer(b)
      counter = 0
      efg(counter, c)
    end
   def efg(a, e) do
     if a < e do
       puts a
       a = a + 1
       efg(a,e)
     else
       a

      end
    end
  end
