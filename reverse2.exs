defmodule Aditya do
  import IO
  def abc do
      a = gets(" Enter any number")
      b = String.trim(a)
      len = String.length(b)
      #counter = len
      str = ""
      list = String.graphemes(b)
      func2(list , len, str)
    end
    def func2(list, len, str) do
       value = Enum.at(list, len - 1) # len - 1
      # IO.inspect str
       #IO.inspect list
       #IO.inspect len

       if (len == 0) do
         str
       else

          str = str <> value
          func2(list, (len - 1), str)
       end
       end
     end
