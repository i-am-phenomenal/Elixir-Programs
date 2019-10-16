defmodule Aditya do
  import String
  def get_sum_product do
      a = gets(" Enter your choice 1) Sum 2) product")

      num1 = gets(" Enter number : ")
      var1 = String.trim (num1)
      num3 = String.to_integer(var1)
      num2 = gets("Enter number 2: ")
      var2 = String.trim (num2)
      num4 = String.to_integer(var2)

      b = String.trim(a)
      c = String.to_integer(b)
      case c do
        1 ->  num3 + num4
        2  -> num3 * num4
        _ -> 0
      end
    end
  end
