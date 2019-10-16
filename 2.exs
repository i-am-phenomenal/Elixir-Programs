defmodule Aditya do
   import IO

  def get_sum_product do
      a = gets("Enteryourchoice1)Sum2)product")

      num22 = gets("Enternumber:")
      IO.inspect(num22) 
      var1 = String.trim_trailing(num22)
      num3 = String.to_integer(var1)
      num322 = gets("Enternumber:")
      var2 = String.trim (num322)
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
