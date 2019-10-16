defmodule Aditya do
   import Integer

   def abc(_, 0), do: 1
   def abc(x, n) when Integer.is_odd(n), do: x * abc(x, n - 1)
   def abc(x, n) do
     result = abc(x, div(n, 2))
     result * result
   end
 end
