defmodule Aditya do
  import IO
  def abc do
  func1([29, 56, 34, 1, 5], String.to_integer(String.trim(gets(" Enter a number"))), 0, 0)
  end
  def func1(list, number, value, index) do
      index = index = Enum.find_index(list, fn(x) -> x == number end)
      IO.inspect index

      list = List.delete(list, Enum.at(list, index))
      IO.inspect list
      sort(list, number, index, 0, [])
  end

  def sort(list, number, index, 0, sortedlist) do
     if length(list) != 0 do
     max = Enum.max(list)
     list = List.delete(list, max)
     sortedlist = List.insert_at(sortedlist, 0, max)
      sort(list, number, index, 0, sortedlist)
    else
       sortedlist = List.insert_at(sortedlist, index, number)
       IO.inspect sortedlist

  end
end
end
