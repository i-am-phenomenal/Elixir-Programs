defmodule Aditya do
  import IO
   def abc do
     list = ["Hello", "World", "in"]
     counter = 0
     str = ""
     IO.puts("******************")
     func2(list, counter , str)
    end
    def func2(list, counter, str) do
      str = case Enum.at(list, counter) do
        nil -> "  "
        x -> x
      end
      str2 = String.pad_leading(str, 10, " ")
      str3 = String.pad_trailing(str2, 10, " ")
      str3 = String.replace(str3, " ", "*", global: false)
      IO.inspect(str3)
      if counter < length(list) do
        func2(list, counter + 1, str3)
      else
        str3
        IO.puts("******************")
      end
    end
 end
