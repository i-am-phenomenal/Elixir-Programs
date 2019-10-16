defmodule Aditya do
   def abc do
     func(10, "1")
   end
    def func(counter, a) do
      if counter > 0 do
        a = String.duplicate(a, counter)
        IO.inspect(a)
        func(counter - 1, a)
      end
    end
end
