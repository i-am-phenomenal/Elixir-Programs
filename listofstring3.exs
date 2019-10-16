defmodule Aditya do
  def abc do
     func(["cat", "dog", "mouse", "lion", "ant", "bat", "cct"], [], 0)
  end
  def func(list, list2, counter) do
    if counter < length(list) do
      str = Enum.at(list, counter)
      str = to_charlist(str)
      list2 = List.insert_at(list2, counter, str)
      func(list, list2, counter + 1)
    else
       func3(list2, 0, [], [])
    end
  end
   def func3(list2, counter1, max1, list3) do
      if length(list2) != 0 do
          max1 = Enum.max(list2)
          list2 = List.delete(list2, max1)
          list3 = List.insert_at(list3, 0, max1)
          func3(list2, counter1 + 1, max1, list3)
      else
         IO.inspect list3

   end
end
end
