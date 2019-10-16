defmodule Strings do
   def userstring do
     commonalphabets("aditya", "chaturvedia", 0, "", [])
   end
   def commonalphabets(firststring, secondstring, counter, character, listofcommonalphabets) do
     if counter < String.length(firststring) do
        character = String.at(firststring, counter)
        checkforcommonalphabet(character, secondstring, listofcommonalphabets, 0, firststring, secondstring, counter)
     else
        sort(listofcommonalphabets, [], "")
     end
   end
   def checkforcommonalphabet(character, secondstring, listofcommonalphabets, counter1, firststring, secondstring, counter) do
       if counter1 < String.length(secondstring) do
           if character == String.at(secondstring, counter1) do
              listofcommonalphabets = List.insert_at(listofcommonalphabets, 0, character)
              checkforcommonalphabet(character, secondstring, listofcommonalphabets, counter1 + 1, firststring, secondstring, counter)
            else
               checkforcommonalphabet(character, secondstring, listofcommonalphabets, counter1 + 1, firststring, secondstring, counter)
           end
         else
            commonalphabets(firststring, secondstring, counter + 1, character, listofcommonalphabets)
       end
   end
    def sort(listofcommonalphabets, sortedlist, maximumvalue) do
        if length(listofcommonalphabets) !=0 do
            maximumvalue = Enum.max(listofcommonalphabets)
            listofcommonalphabets = List.delete(listofcommonalphabets, maximumvalue)
            sortedlist = List.insert_at(sortedlist, 0, maximumvalue)
            sort(listofcommonalphabets, sortedlist, maximumvalue)
        else
            IO.inspect sortedlist
        end
    end
end
