defmodule Aditya do
    def abc do
       list = [29,1,32,0,5]
       func(list, 0, 1, 0)
    end
    def func(list, counter, counter1, sem) do
       if sem <= length(list) do
          if counter < length(list) do
             if Enum.at(list, counter) < Enum.at(list, counter1) do
            end
          end
       end
    end
end
