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
          if rem(counter , 3) == 0 || rem(counter ,5) == 0  do
             #puts counter
            IO.inspect("Buzz")
            loop(n, counter + 1)
          else
              IO.inspect counter
               loop(n, counter + 1)
          # if rem(counter, 5) == 0 do
          #     IO.inspect("Fizz")
          #     loop(n, counter + 1)

          #   end
          end
          #IO.write counter
      #   else
      #      counter
        end
    end
  end
