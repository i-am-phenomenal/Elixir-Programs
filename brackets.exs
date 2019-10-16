defmodule Aditya do
  import IO
  def abc do
    func(0, 0, String.codepoints(String.trim(gets(" Enter String"))), 0, 0)
  end
  def func(openingBraces, closingBraces, [], openingbraces2, closingbraces2) do
    openingBraces == closingBraces  && openingbraces2 == closingbraces2
  end

  def func(openingBraces, closingBraces, [ headOfChars | tailOfChars], openingbraces2, closingbraces2) do
    case headOfChars do
      "(" -> func(openingBraces+1, closingBraces, tailOfChars, openingbraces2, closingbraces2)
      ")" -> func(openingBraces, closingBraces+1, tailOfChars, openingbraces2, closingbraces2)
      "{" -> func(openingBraces, closingBraces, tailOfChars, openingbraces2 + 1, closingbraces2)
      "}" -> func(openingBraces, closingBraces, tailOfChars, openingbraces2, closingbraces2 + 1)
      _ -> func(openingBraces, closingBraces, tailOfChars, openingbraces2, closingbraces2)
    end
  end
end
