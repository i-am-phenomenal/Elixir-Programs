defmodule Aditya do
    import IO
  def abc do
     a = gets(" Enter any number")
     b = String.trim(a)
     number = String.to_integer(b)
     factorial(number)
    end
    def factorial(number) do
        case number do
          1 -> 1
          _ -> number * factorial(number - 1)
        end
    end
  end
