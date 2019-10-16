defmodule Aditya do
  import IO
  def abc  do
    a = gets(" Enter any number")
    b= String.trim(a)
    number = String.to_integer(b)
    list = []
    counter = 2
    func2(number, counter, list)
  end
  def func2(number, counter, list) do

    if rem(number, counter) == 0 do
       number = number / counter
       number = Kernel.trunc(number)
       list = List.insert_at(list, 0, counter)
       counter = counter + 1
       func2(number, counter, list)
     else
         IO.inspect list
        func2(number, counter, list)

    end
  end
end
