defmodule Combinations do
  def findCombinations(powerset) do
    findCombinations(powerset, [])
  end
  def findCombinations([], acc) do
    acc
  end
  def findCombinations([x | powerset], acc) do
    findCombinations(powerset,
      (findSubsets(powerset)
        |> Enum.map(fn list -> [ x | list] end))
        ++ acc
  )

  end
  def findSubsets(powerset) do
    findSubsets(powerset, [])
  end
  def findSubsets([head | tailOfelementsInPowerSet] , accOfSets) do

    findSubsets(tailOfelementsInPowerSet,
                  accOfSets++findCombNestedPowersets(head,
                                                        tailOfelementsInPowerSet,
                                                        tailOfelementsInPowerSet,
                                                        length(tailOfelementsInPowerSet),
                                                        []
        )
      )
  end
  def findSubsets([], accOfSets) do
    accOfSets
  end
  def findCombNestedPowersets(elementToAppendToSet, [head | tail ] = elementsInPowerSet, powersetInMem, currRecurCounter, accForSubsets) do
    IO.inspect "Cur Recur Counter ==> #{currRecurCounter} with element to append having #{elementToAppendToSet} "
    case length(elementsInPowerSet) >= currRecurCounter do
      true ->
        accumulator =
            [[elementToAppendToSet]++(elementsInPowerSet |> Enum.take currRecurCounter)]
        findCombNestedPowersets(
                          elementToAppendToSet,
                          tail,
                          powersetInMem,
                          currRecurCounter,
                          accForSubsets++accumulator
              )
      false -> findCombNestedPowersets(elementToAppendToSet, tail, powersetInMem, currRecurCounter, accForSubsets)
    end
  end
  def findCombNestedPowersets(elementToAppendToSet, [], [], 0, accForSubsets) do
    accForSubsets
      |> Enum.uniq
  end
  def findCombNestedPowersets(elementToAppendToSet, [], [ headInMem | tailInMem ], 0, accForSubsets) do
    IO.inspect "Tail In Memory #{tailInMem}"
    findCombNestedPowersets(elementToAppendToSet, tailInMem, tailInMem, length(tailInMem), accForSubsets)
  end
  def findCombNestedPowersets(elementToAppendToSet, [], powersetInMem, currRecurCounter, accForSubsets) do
    findCombNestedPowersets(elementToAppendToSet, powersetInMem, powersetInMem, currRecurCounter-1, accForSubsets)
  end
end
