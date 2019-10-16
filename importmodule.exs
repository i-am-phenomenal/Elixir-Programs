defmodule Module do
 def add do
    c = 10 + 20
 end
end


defmodule Importmodule do
  use Module
   def use1 do
       # a = String.trim(gets(" Enter any number"))
       # b = String.trim(gets(" Enter any number"))
       add
   end
end
