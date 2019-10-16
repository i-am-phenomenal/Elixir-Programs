defmodule Aditya do
  def abc do
    func([10000,29,24,1,6,30], 0, [])
    end
    def func(list, max, list2) do
      if length(list) != 0  do

        max = Enum.max(list)
        list = List.delete(list, max)
        list2 = List.insert_at(list2, 0, max)
        func(list, max, list2)
       else
        IO.inspect list2
        end
      end
    end
