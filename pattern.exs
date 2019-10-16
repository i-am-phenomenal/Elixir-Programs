defmodule Star do
  def star do
    printstar(1, 10, "1", " ", "", "1",  0)
  end
  def printstar(counter, counter1, a, b, c, d, counter2) do

    if counter >= 0 && counter1 >= 0 do
        IO.puts "#{String.duplicate(b, counter1)}  #{(String.duplicate(a, counter))}#{(String.duplicate(d, counter2))}"
      printstar(counter + 1, counter1 - 1, a, b, c, d, counter2 + 1)
    else
       print1(9, 2, a, b, c, d, 10)
    end
  end
  def print1(counter, counter1, a, b, c, d, counter2) do
    if counter >= 0  && counter1 <= 12 do
      IO.puts "#{String.duplicate(b, counter1)} #{String.duplicate(a, counter)}#{String.duplicate(d, counter2)}"
      print1(counter - 1, counter1 + 1, a, b, c, d, counter2 - 1)
    end
  end
end
