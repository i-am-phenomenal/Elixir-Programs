defmodule Aditya do
  def abc do
    printnextline(String.split("I am Aditya Chaturvedi"), 0)
  end
  def printnextline(listofwords, counter) do
    if counter < length(listofwords) do
      # Stars to be inserted here
       IO.inspect Enum.at(listofwords, counter)
       # Stars to be inserted here
       printnextline(listofwords, counter + 1)
     else
        0
    end
  end
end
