defmodule Aditya do
   import IO
     def abc do
        str = String.trim(gets(" Enter any string"))
        list = String.graphemes(str)
        counter = 0
        val = ""
        count = 0
        func(counter, str, list, val, count)
      end
      def func(counter, str, list, val, count) do
         if counter < String.length(str) do
            IO.inspect count
              if count == 3 do
              IO.inspect(counter)
              first_value =  String.to_integer(Enum.at(list, counter - 4))
              last_value1 = Enum.at(list, counter)
                 if last_value1 == "?" do
                      func5()
                    else
                       last_value = String.to_integer(last_value1)
                         if (first_value + last_value == 10) do
                            IO.inspect "True"

                         else
                           IO.inspect "False"
                      end
               end
            else
             val = Enum.at(list, counter)
             func3(counter, str, list, val, count)
           end
        else
              IO.inspect " Exit"
         end
       end
      def func3(counter, str, list, val, count) do
            if val == "?" do
              count = count + 1
            #  IO.inspect count
                func(counter + 1, str, list, val, count)
            else
              func(counter + 1, str, list, val, count)
            end
         end
        def func5() do
           IO.inspect "False"
         end
       end
