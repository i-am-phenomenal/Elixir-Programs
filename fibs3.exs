defmodule Aditya do
   import IO
   def fib(n) do
  #    fib(n - 1) + fib(n - 2)
     case n do
        0 -> 0
        1 -> 1
        _ -> fib(n - 1) + fib(n - 2)
      end
    end
 end
