defmodule Aditya do
  import IO
  def abc do
     counter = 0
     number1 = 1
     a = gets("Enter number")
     b = String.trim(a)
     number = String.to_integer(b)
     x = number
     c = gets(" Enter power")
     d = String.trim(c)
     power = String.to_integer(d)
     expo(number, power, counter, number1, x)
    end
  def expo(number, power, counter, number1, x) do #when counter <= power do
      if counter < power do

       number = number1 * number
       number1 = number
       expo(number , power, counter + 1, number1, x)
     else
       number / x
     end
   end
  end
