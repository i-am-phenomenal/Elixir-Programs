defmodule Aditya do
   import IO
    def abc do
        a = gets(" Enter the value of n")
        b = String.trim(a)
        n = String.to_integer(b)
        counter =  1

        func2(counter , n)
    end
    def func2(counter, n) do
        if counter <= n do
         #IO.inspect counter

        case counter do
          x  when (rem(x, 15) == 0) ->
             IO.inspect "FizzBuzz"
             func2(counter + 1, n)
          x when rem(x, 3) == 0 ->
            IO.inspect "Buzz"
             func2(counter + 1, n)
             # func2(counter + 1, n, "Fizz" )
          x when rem(x, 5) == 0 ->
            IO.inspect  "Fizz"
           func2(counter + 1, n)

           _ ->
           IO.inspect counter
           func2(counter + 1, n)
         end
    end
  end
end
