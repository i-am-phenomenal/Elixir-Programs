defmodule Aditya do
    def abc do
      list = [23,5,29,65,32, 1, 10]
      func2(list, 0, 1, 0, 0)
    end
    def func2(list, counter, counter1, temp, sem) do
      if sem <= length(list) do
          if counter < length(list) do
           #IO.inspect list
          func3(list, counter, counter1, temp, sem)
        else
             IO.inspect list
        end
      end
    end
    def func3(list, counter, counter1, temp, sem) do
      if Enum.at(list, counter) <= Enum.at(list, counter1) do
        #IO.inspect list
         temp = Enum.at(list, counter)
         list = List.replace_at(list, counter, Enum.at(list, counter1))
         list = List.replace_at(list, counter1, temp)

         func2(list, counter + 1, counter1 + 1, temp, sem + 1)
       else
         func3(list, counter + 1,0, temp, sem)
      end

    end
  end
