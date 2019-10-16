defmodule Primestring do
  import IO
  def enterstring do
      a = String.trim(gets(" Enter a string"))
      userstring = String.to_charlist(a)
     sumofstring(userstring, 0, 0)
  end
    def sumofstring(userstring, counter, sumofascii) do
            if counter < length(userstring) do
               sumofascii = sumofascii + Enum.at(userstring, counter)
               sumofstring(userstring, counter + 1, sumofascii)
             else
                checkforprime(sumofascii)
            end
    end
    def checkforprime(sumofascii) do
      if rem(sumofascii, 3) != 0 && rem(sumofascii, 2) != 0 do
          True
       else
          False
      end
    end
end
