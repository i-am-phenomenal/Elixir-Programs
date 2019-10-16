defmodule Aditya do
   import IO
   # module for a program in which user enters a string and its digits gets stored in a list
   def abc do
    counter = 0
    a = gets(" enter string ")
    list = []
    b = String.trim_trailing(a)
    efg(b ,counter, list)
  end
   def efg(b, counter, list) do

      if counter >= String.length(b) do
        f = String.at(b, String.length(b))
        #abcd(f, counter)
        #List.insert_at(list, counter, String.at(b, String.length(b)))
        list = list ++ f
      else
        e = String.at(b, counter)
        #puts e
        #list =  List.insert
        list = List.insert_at(list, counter, e)
        #counter = counter + 1
         efg(b, counter + 1, list)
      end
    end
    # module 1 ends here
     #  2. Module for a program in which user enters data and gets added to a list
    def init do
       list  = []
       counter = 0
       userchoice(list, counter)
    end
    def userchoice(list, counter) do
      choi = gets(" Enter your choice  Y/N")
      choice = String.trim(choi)
      useri = gets("Enter any number")
      userinput = String.trim(useri)
      if choice == "Y" || choice == "y" do
         #list = list ++ userinput
         list = List.insert_at(list, counter, userinput)
         userchoice(list , counter + 1)
      else
        list
      end
    end
    # Module 2 ends here
    # module for sum of elements in a list
    def sum3 do
      list = [5,6,7,8]
      size = length(list)
      sum = 0
      counter = 0
    #  ele = List.first(list)
      sum1(counter, sum, list, size)

    end

    def sum1(counter, sum, list, size) when counter ==  size do
          sum
    end

    def sum1(counter, sum, list, size) do
       ele = List.first(list)
       list = List.delete_at(list, counter)
       sum = sum + ele
       #IO.write "#{sum}"
       #if Enum.empty?(list) == True

      # else
       sum1(counter + 1, sum, list, size)

     end
     # module 3 ends here
     # module 4 for sorting a list
     def sort1 do
        list = [23,19,1]
        #list1 = List.to_integer(list)
        list = Enum.sort(list)
        IO.inspect list
      end
      # end of module 4
      # module 5 for another logic for sorting
      def init do
         counter  = 0
         list = [29,19,2]
         list1 = []
         sort2(counter, list, list1)
      end
    def sort2(counter, list, list1) do

       ele = List.first(list)
       list = List.delete_at(list, counter)
      #if ele > Enum.at(list)
       #list1 = List.insert_at(list1 , )

    end
    # module for reversing elements of a list
    def reverse do
       a = gets(" Enter string")
       b = String.trim(a)
       list = []
       len = String.length(b)
       counter = 0
       reverse2(b, counter, list, len)
     end
    def reverse2(b, counter, list, len) do
      value = String.at(b, len)
      #list = list ++ b
      list = List.insert_at(list, counter, value)
       IO.write "#{list}"
       reverse2(b, counter + 1, list, len - 1)
    end
    def reverse2(b, counter, list, len) when counter == len do
         list
      end
end
