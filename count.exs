defmodule Aditya do
   import IO
  def abc do
    str = gets(" Enter the string")
                          |> String.trim

    list = String.graphemes(str)
    func3(list, 0, "", 0)

    end
    def func3(list, counter1, character, count) do
      if counter1 < length(list) do
        character = Enum.at(list, counter1)
        func2(list, 0, character, 0, counter1)
      end
    end
   def func2(list, count, character, counter, counter1) do
      if counter < length(list) do
          if Enum.at(list, counter) == character do
                 count = count + 1
                 func2(list, count, character, counter + 1, counter1)
        else
           func2(list, count, character, counter + 1, counter1)
      end
    else
      IO.inspect " Count of #{ character} is #{ count}"
         func3(list, counter1 + 1, character, count)
   end
 end
end
