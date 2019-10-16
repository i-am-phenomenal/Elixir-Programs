defmodule Armstr do
import IO
 def armstr do
   str1 = IO.gets("enter any string")
   str1 = String.trim(str1)
   y = String.to_integer(str1)
   str = Integer.digits(y)
   nod = length(str)
   nod1 = nod
   fun(str,nod,1,nod1,0,0, y)
 end
 def fun(str,nod,m,nod1,x,sum, y) when nod > 0 do
   r = List.first(str)
   m = m*r
   #nod = nod-1
   fun(str, nod - 1, m, nod1, x, sum, y)
 end

 def fun(str,nod,m,nod1,x,sum, y) when nod == 0 do
   sum = sum + m
   aa = List.insert_at(str, nod1, List.first(str))
   bb = List.delete_at(aa, 0)
   x=x+1
   if(x < nod1) do
     fun(bb,length(str),1,nod1,x,sum, y)
   else
     IO.puts sum
     #f = List.to_string(bb)
        if sum == y do
            puts "True"
        else
           puts "False"
      end
   end
 end
    #func(bb,length(str),1,nod1,x,sum, y) do

end
