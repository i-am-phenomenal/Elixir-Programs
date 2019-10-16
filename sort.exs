# defmodule Aditya do
#    import IO
#    def abc do
#      # list = [23,4,5,1,9]
#      # counter  = 0
#      # counter1 = 1
#      func2([10,12,3,14,2], 0 , 1,[], 0)
#    end
#    def func2(list, counter, counter1, list2, temp) do
#       if counter < length(list) do
#          func3()
#       #   if counter1 < length(list) do
#       #      val = Enum.at(list, counter)
#       #      val1 = Enum.at(list, counter + 1)
#       #      if val > val1 do
#       #       #  list = List.replace_at(list, val1, val)
#       #         IO.inspect list2
#       #         temp = val
#       #         val = val1
#       #         val1 = temp
#       #         list2 = List.insert_at(list, counter1, val)
#       #         list2 = List.insert_at(list, counter, val1)
#       #         func2(list, counter, counter1 + 1, list2, temp)
#       #       else
#       #          func2(list, counter + 1, counter1 + 1, list2, temp)
#       #      end
#       #    # else
#       #    #    IO.inspect list2
#       # end
#      else
#          IO.inspect list2
#    end
#     def func3(list, counter, counter1, list2, temp) do
#       if counter1 < length(list) do
#          val = Enum.at(list, counter)
#          val1 = Enum.at(list, counter + 1)
#          if val > val1 do
#           #  list = List.replace_at(list, val1, val)
#             IO.inspect list2
#             temp = val
#             val = val1
#             val1 = temp
#             list2 = List.insert_at(list, counter1, val)
#             list2 = List.insert_at(list, counter, val1)
#             func(list, counter, counter1 + 1, list2, temp)
#           else
#              func2(list, counter + 1, counter1 + 1, list2, temp)
#          end
#        # else
#        #    IO.inspect list2
#     end
#     end
#  end
# end

defmodule Aditya do
  def abc do
     list = [15,2,3,14,1]
     counter = 0
     counter1 = 0
     func(list, counter, counter1)
    end
    def func(list, counter, counter1, list1, list2) do
      if length(list1) < length(list) do
        func2(counter, counter1, list)
      else
        IO.inspect list
      end
    end
    def func2(counter, counter1, list) do
      if counter1 < length(list) do
         if Enum.at(list, counter) < Enum.at(list, counter1)
        func2(counter , counter1 + 1, list)
      else
         func(list, counter, counter1)
      end
    end
  end
