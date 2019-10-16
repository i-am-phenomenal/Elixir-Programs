defmodule Sort do
  def sortMe([]) do
    []
  end
  def sortMe([headOfList | tailOfList]) do
    sortMe(Enum.filter(sortedList, fn x -> x <= headOfList end))
                                    ++ [headOfList]
                                    ++  sortMe(Enum.filter(sortedList, fn x -> x > headOfList end))

  end
end
