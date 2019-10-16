defmodule Aditya do
    import IO
  def abc do
     a = gets(" Enter the value of n")
     b = String.trim(a)
     number = String.to_integer(b)
     num1 = 0
     num2  = 1
     num3 = 0
     counter3 = 0
     num1
     num2
     fibs(num1, num2, number, counter3, num3)
    end
     def fibs(num1, num2, number, counter3, num3) do

        #IO.inspect num1
        #IO.inspect num2
      num3 =  num1 + num2
      if counter3 <= number  do
           num3
         fibs(num1 + 1, num2 + 1, number, counter3 + 1, num3)

      else
        num1
        num2
         end
       end
    end
