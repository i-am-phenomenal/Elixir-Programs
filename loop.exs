defmodule Aditya do
    import IO
  def abc(a) do
    #list = [1,2,3,4,5]
    #List.zip([[1,2], [3,4], [5,6]])
     counter = 0
    if counter <= a do
       abc(a + 1)
       puts counter
    else
       counter
      end
   end
 end
