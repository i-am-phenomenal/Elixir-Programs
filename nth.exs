defmodule Aditya do
     import IO
 def abc do
    a = gets(" Enter any number")
    b = String.trim(a)
    n = String.to_integer(b)
    counter = 2
    func2(n, counter)
     end
    def func2(n, counter) do
         #counter = counter + 0
         #IO.inspect(counter)
         if (counter <= n)  do
             if (rem(counter, 2) == 0) do
              puts(counter)
              func2(n , counter + 1)
             else
               func2(n, counter + 1)
              end
        #else

       end
      end
   end
