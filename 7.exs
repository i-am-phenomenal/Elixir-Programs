defmodule Aditya do
   import IO
   def abc do
      counter = 0
      sum = 0
      number = 0
      a = gets(" Enter a number")
      b = String.trim(a)
      list1 = []
      len1 = String.length(b)
      len = len1
      func2(len, number, b, list1, counter, sum)
    end
    def func2(len, number, b, list1, counter, sum) do
      list1 = String.graphemes(b)
      first = List.first(list1)
      list1 = List.delete_at(list1, counter)
      number = String.to_integer(first)
      func3(number, len, sum, counter + 1, b, list1)
    end
  def func3(number, len, sum, counter, b, list1) when counter != len  do
    sum = sum + pow(number, len)
    func2(len, number, b, list1, counter + 1, sum)
  end
  def func3(number, len, sum, counter, b, list1) when counter == len   do
     sum
  end
  def pow(number, len) do
     counter = 0
     number1 = 1
     #a = gets("Enter number")
     a = number
     b = String.trim(a)
     number = String.to_integer(b)
     x = number
     c = gets(" Enter power")
     d = String.trim(c)
     power = String.to_integer(d)
     expo(number, power, counter, number1, x)
    end
  def expo(number, power, counter, number1, x) do #when counter <= power do
      if counter < power do

       number = number1 * number
       number1 = number
       expo(number , power, counter + 1, number1, x)
     else
       number / x
     end
   end
end
