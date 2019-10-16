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
            IO.inspect counter
            counter = counter + 1
            func2(counter, n)
          # else
          #    #func2(counter + 1, n)
          #    counter
          end
      end
      def func2(counter, n) when (rem(counter, 3) == 0) do
          IO.puts "Buzz"
          func2(counter + 1, n)
      end
      def func2(counter, n) when (rem(counter, 5) == 0) do
        IO.puts "Fizz"
        func2(counter + 1, n)
      end

  end
