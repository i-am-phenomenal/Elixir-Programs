defmodule Aditya do
    import IO
     def abc do
        a = gets(" Enter the number")
        b = String.trim(a)
        n = String.to_integer(b)
        counter = 0
        loop(n, counter)
    end
    def loop(n, counter) do
#           IO.inspect counter
        if counter <= n do
        cond do
          rem(counter, 3) == 0 -> IO.inspect("Buzz")
          rem(counter, 5) == 0 -> IO.inspect("Fizz")
          true                 -> loop(n, counter + 1) #IO.inspect counter
        end
      #else
      #   loop(n, counter + 1)
      end
    end
  end
