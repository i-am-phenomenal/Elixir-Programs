defmodule Aditya do
  import IO
    def abc do
       a = gets(" Enter String")
       b = String.trim(a)
       list1 = String.to_charlist(b)
       list2 = []
       counter = 0
       len = String.length(b)
       reverse2(counter , len, list1, list2)
     end
    def reverse2(counter, len, list1, list2) do
      value = Enum.at(list1, len)
      list2 = List.insert_at(list2, counter, value)
      write "#{list2}"
      write "#{list1}"
      reverse2(counter + 1, len - 1, list1, list2)
    end
  def reverse2(counter, len, list1, list2) when counter == len do
    list2
  end
end
