defmodule Aditya do
   import IO
    def abc do
      a = gets(" Enter any number")
      b = String.trim(a)
      number = String.to_integer(b)
      counter = 2
      fac1 = 0
      counter1 = 0
      list = []
      iseven(number, counter, list, counter1, fac1)
    end
    def iseven(number, counter, list, counter1, fac1) do
     #IO.inspect number
    #  IO.inspect counter
    # IO.inspect fac1
      #IO.inspect list
       if rem(number, counter) == 0 do
            fac1 = number / counter
            fac1 = Kernel.trunc(fac1)
            list = List.insert_at(list, counter1, counter)
        #    counter = counter + 1
        #    counter1 = counter1 + 1
            iseven(fac1, counter, list, counter1 + 1, fac1)
       else
          counter = 3
          isodd(fac1, counter, list, counter1, fac1)
      end
     end
      def isodd(fac1, counter, list, counter1, fac1) do
            if fac1 == 0 || fac1 == 1 do
                 IO.inspect list
                 #raise " "
          end
          if rem(fac1, counter) == 0 do
              IO.inspect(list)
               fac1 = fac1 / counter
               fac1 = Kernel.trunc(fac1)
               list = List.insert_at(list, counter1, counter)
               counter = counter + 2
               #counter1 = counter1 + 1

               iseven(fac1, counter, list, counter1 + 1, fac1)
          else
              IO.inspect list
              iseven(fac1, counter + 2, list, counter1, fac1)
      end
    end
  end
