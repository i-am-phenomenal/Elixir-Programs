defmodule Power do
   import IO
  def abc do
      num1 = String.to_integer(String.trim(gets("Enter any number")))
      num2 = String.to_integer(String.trim(gets("Enter another number")))
      power(num1, num2)
   end
    def power(num1, num2) do
       case num2 do
        0 -> 1
       _ -> value = num1 * power(num1, num2 - 1)
    end
  end
end
