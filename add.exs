defmodule Aditya do
   import IO
   import String
    def abc do
      a = gets(" Enter your choice 1) Sum 2) product")
      #b = String.to_integer(a)
      num1 = gets("Enter number 1")
      num3 = to_integer(num1)
      num2 = gets("Enter number 2")
      num4 = to_integer(num2)
      puts(num3 + num4)
    end
  end
