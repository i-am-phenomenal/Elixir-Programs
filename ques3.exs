# Algorithm
#    Take the number from the user
#    The list is pre defined
#    We traverse throuth the list and once we reach the user entered element, we take a note of that element and delete tht element from the sorted list
#    then we insert that element at its original index in the new list
defmodule Aditya do
   import IO
  def abc do
    usernumber = String.to_integer(String.trim(gets("Enter a number")))
    list = [10000,29,24,1,6,30]
    #list = [2,76,45,21,29,]
    length = length(list)
    func(list, 0, [], 0, length, usernumber, 0, 0)
    end
    def func(list, max, list2, counter, length, usernumber, val, val2) do
      if counter < length  do
        if Enum.at(list, counter) == usernumber do
          val = counter + 1
          val2 = Enum.at(list, val)
          func(list, max, list2, counter + 1, length, usernumber, val, val2)
           else
        max = Enum.max(list)
        list = List.delete(list, max)
        list2 = List.insert_at(list2, 0, max)
        func(list, max, list2, counter + 1, length, usernumber, val, val2)
           end
       else
        func5(0, list2, usernumber)
           end
        end


      def func4(list, max, list2, counter, length, usernumber, val) do
        list2 = List.insert_at(list2, val + 1, usernumber)
        IO.inspect(Enum.uniq(list2))
      end
      def func5(counter, list2, usernumber) do
        if Enum.at(list2, counter) == usernumber do
       list2 = List.delete(list2, usernumber)
       IO.inspect list2
       func5(counter + 1, list2, usernumber)
     else
        IO.inspect list2
      end
    end

end
