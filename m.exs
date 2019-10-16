defmodule Plus do

def plus5 do
   str = "ahsst"
   b = String.to_char_list(str)
   l = length(b)
   fun(b,l)
 end
 def fun(b,l) do
   if l > 0 do
        val = List.first(b)
        val2 = val + 1
        val3 = <<val2>>
        IO.inspect val3
        b = List.delete_at(b, 0)
        fun(b,length(b))
   end
 end

end
