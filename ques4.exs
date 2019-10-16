defmodule Longestword do
    def userinput do
      longestword(String.split("I am Aditya Chaturvedi From Delhi aaaaaaaaaaaaaaaaaaaaaa"))
    end
    def longestword(userstringlist) do
        word = Enum.max_by(userstringlist, fn(x) -> String.length(x) end)
        IO.inspect "Longest word is => #{word}"
        IO.inspect " Number of characters in the longest word is #{String.length(word)}"
    end
  end
