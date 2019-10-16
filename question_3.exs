defmodule Aditya do
   import IO

  def abc do
      a = gets("Enteryourchoice1)Sum2)product")

      num22 = gets("Enternumber:")
      var1 = String.trim (num22)
      n = String.to_integer(var1)

      b = String.trim(a)
      c = String.to_integer(b)

      case c do
        1 ->  (n * (n + 1)) / 2
        2  -> num3 * num4
        _ -> 0.0
      end
    end
  end
