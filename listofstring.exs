defmodule Aditya do
  def abc do
    func(["chaturvedi", "yash ", " Aditya", "hadhajgchdj"], 0, "", 1, "", 0)

  end
  def func(list, counter, first, counter1, val, sem) do
     if sem < length(list) do
      if counter < length(list) do
        first = assign(String.first(Enum.at(list, counter)))
        val  = assign(String.first(Enum.at(list, counter1)))
        func3(list, counter, counter1, first, val, 0, sem)

      end
    else
       IO.inspect list
    end
  end
   def func3(list, counter, counter1, first, val, temp, sem) do
       IO.inspect list
        if counter1 < length(list) do
             if first < val do
               IO.inspect counter
               IO.inspect counter1
            temp = Enum.at(list, counter)
             list = List.replace_at(list, counter, Enum.at(list, counter1))
             list = List.replace_at(list, counter1, temp)
             # list2 = List.insert_at(list2, counter, Enum.at(list, counter))
             # list2 = List.insert_at(list2, counter1, temp)
            IO.inspect counter
            IO.inspect counter1
            func3(list, counter + 1, first, counter1 + 1, val, temp, sem)
            # func(list, counter + 1, first, counter1 + 1, val)
            #func(list, 0, 0,0,0)


         else

             func(list, counter + 1, first, counter1 + 1, val,sem + 1)
          # func(list, 0, 0,0,0)

       end

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
