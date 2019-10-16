defmodule Aditya do
  def abc do

    func([23,54,1,76,29], [])
  end
def func([head | tailofthelist],  sortedlist) do
   if length(tailofthelist) + 1 !=  0  do
         IO.inspect " HEad of the list is #{head}"
         IO.inspect " Length of tailofthelist is #{length(tailofthelist)}"
        #originallist = [head | tailofthelist]
        sortedlist = List.insert_at(sortedlist, 0, head)
        func(tailofthelist, sortedlist)
      else
          if length(tailofthelist) == 1 do
           sortedist = List.insert_at(sortedlist, 0, Enum.at(tailofthelist, 0))
           IO.inspect sortedlist
      end
     end
   end
end
