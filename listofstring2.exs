defmodule Aditya do
  def abc do
    func(["chaturvedi", "aditya", "yash", "hack", "dog"], 0, "", "", 0, [])
  end
   def func(list, max, first, val, counter, list2) do
       if counter < (length(list) - 1) do
       first = assign(String.first(Enum.at(list, counter)))
#          IO.inspect first
          list2 = List.insert_at(list2, counter, first)
                    #  |> String.first
                    #  |> assign()
          func(list, max, first, val, counter + 1, list2)
       else
          # IO.inspect list2
            func4(list, 0, [], list2, 0, 0, 0)
            # IO.inspect list2
     end
   end
    def func4(list, max, list3, list2, index, counter, val) do
        #  IO.inspect(list3)
            if length(list2) != 0 do
        #       IO.inspect " value of counter is #{counter}"
              max = Enum.max(list2)
              list2 = List.delete(list2, max)
              list3 = List.insert_at(list3, 0, max)
              # index = Enum.find_index(list, fn() -> x end)
              # val = Enum.at(list, counter)
              # list3 = List.insert_at(list3, 0, val)
              func4(list, max, list3, list2, index, counter + 1, val)
            else
               #IO.inspect list3
               func5(list, list3, "", 0, 0, list4)
              # list2 = List.delete(list, max)
              # list3 = List.insert_at(list, 0, )
            end

    end
     def func5(list, list3, first, counter, val, list4) do
        if counter < length(list3) do
          val = Enum.at(list3, counter)
        #  val1 = StringEnum.at(list, counter)
          # if val == Enum.any?(list, fn x ->
          #        x = assign(String.first(Enum.at(list,counter))

         func6(list, list2, list3,list4, val, val1, 0)
      else
           IO.inspect list4
     end
     def func6(list, list2, list3, list4, val, val1, counter1) do
        if counter1 < length(list3) do
             val1 = assign(String.first(Enum.at(list, counter1)))
             if val == val1 do

               list4 = List.insert_at(list4, 0, Enum.at(list, counter1))
             else
               func6(list, list2, list3, list4, val, val1, counter1 + 1)
             end
         else
            func5(list, list3, first, counter + 1, val, list4)
        end
    end
   def assign(val) do
     case val do
       "a" -> 1
       "b" -> 2
       "c" -> 3
       "d" -> 4
       "e" -> 5
       "f" -> 6
       "g" -> 7
       "h" -> 8
       "i" -> 9
       "j" -> 10
       "k" -> 11
       "l" -> 12
       "m" -> 13
       "n" -> 14
       "o" -> 15
       "p" -> 16
       "q" -> 17
       "r" -> 18
       "s" -> 19
       "t" -> 20
       "u" -> 21
       "v" -> 22
       "w" -> 23
       "x" -> 24
       "y" -> 25
       "z" -> 26
       _   -> 0

   end
 end
end
end
