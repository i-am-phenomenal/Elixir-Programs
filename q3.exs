defmodule Aditya do
     import IO
  def abc do
  val = String.trim(gets(" Enter a string"))
  counter = 0
  list = String.graphemes(val)
  convert_to_list(list, [], 0)
  end
  def convert_to_list(list, list2, max) do
    if length(list) != 0 do
      max = Enum.max(list)
      list = List.delete(list, max)
      list2 = List.insert_at(list2, 0, max)
      convert_to_list(list, list2, max)
    else
       IO.inspect list2
    end
  end
end
