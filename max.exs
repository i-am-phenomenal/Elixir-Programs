defmodule Aditya do
    def initialise do
       list = [1000,200,23,4,5]
       max = Enum.at(list, 0)
      findmax(list, 1, max)
    end
    def findmax(list, counter, max) do

      if counter < length(list) do
        #IO.inspect counter
         IO.inspect max
             assignmax(list, counter, max)
      else
         IO.inspect max
      end
    end
     def assignmax(list, counter, max) do
          val = Enum.at(list,counter)
       if max <= val do
             max = val
             findmax(list, counter + 1, max)
       else
          findmax(list, counter + 1, max)

       end
     end
end
