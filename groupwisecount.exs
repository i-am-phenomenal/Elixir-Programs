defmodule Aditya do
    def abc do
        counter = 0
        list = [43,65,71,27,29,79,11,56,61,82,09,25,56,7,81,97, 3,23,34]
        func(list, counter, 0,0,0)
    end
    def func(list, counter, count1, count2, count3) do
       x = Enum.at(list, counter)
      if counter < length(list) do
        #Enum.count(list, fn(x) ->
        # IO.inspect count1
        # IO.inspect count2
        # IO.inspect count3
         if x > 0 && x < 10 do count1 = count1 + 1 end
         if x > 10 && x < 20 do count2 = count2 + 1 end
         if x > 20 && x < 30 do count3 = count3 + 1 end
         func(list, counter + 1, count1, count2, count3)
      else
        IO.inspect " numbers between 0 and 10 are #{count1}"
        IO.inspect " numbers between 10 and 20 are #{count2}"
        IO.inspect " numbers between 20 and 30 are #{count3}"
      end
    end
  end
