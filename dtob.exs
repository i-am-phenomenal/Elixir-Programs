defmodule Aditya do
    import IO
  # def abc do
  #    a = gets(" Enter any string")
  #    str = String.trim(a)
  #    list = String.to_charlist(str)
  #    func2(str, String.length(str), 0, list, 0)
  #   end
  #   def func2(str, len, counter, list, count) do
  #     value = Enum.at(list, 0)
  #     count = count + 1
  #     list = List.delete_at(list, 0)
  #     if (Enum.any?(list, fn(x) -> x == value end)) == True do
  #       count = count + 1
  #       func2(str, len, counter + 1, list, count)
  #     else
  #         count
  #     end
  #
  #   end
  # end

   # def abc do
   #    str = String.trim(gets("Enter a string"))
   #    tup = {}
   #    list = []
   #    value = 0
   #    counter = 0
   #    func2(counter, str, list, value)
   #  end
   #  def func2(counter, str, list, value) do
   #      if counter <= String.length(str) do
   #        value = String.at(, counter)
   #      end
   #
   #    end
     def abc do
       str = String.trim(gets(" Enter any string"))
       func2({}, 0, str, [])
      end
     def func2(tup, counter, str, list) do
        if (counter < String.length(str)) do
        value = String.at(str, counter)
        list = List.insert_at(list, counter, value)
        tup = List.to_tuple(list)
        func2(tup, counter + 1, str, list)
      else
          IO.inspect list
          IO.inspect tup
        end
     end
 end
