defmodule Combinations do
def whatWhatWhat(powerset) do
   subsets =
     findSubsets(powerset)
       subsets
   #{length(subsets), subsets}
end
def findSubsets([ head | []]) do
  [[head]]
end
def findSubsets([head | tailOfPowerset]) do
  (findSubsets(tailOfPowerset, [])
     |> Enum.map(fn x -> [ head | x ] end))
     ++ [[head]]
     ++ findSubsets(tailOfPowerset)
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
def findCombNestedPowersets(elementToAppendToSet, [ head | tail ] = elementsInPowerSet, powersetInMem, currRecurCounter, accForSubsets) do
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
  ([[elementToAppendToSet]]++accForSubsets)
    |> Enum.uniq
end
def findCombNestedPowersets(elementToAppendToSet, [], [ headInMem | tailInMem ], 0, accForSubsets) do
  findCombNestedPowersets(elementToAppendToSet, tailInMem, tailInMem, length(tailInMem), accForSubsets)
end
def findCombNestedPowersets(elementToAppendToSet, [], powersetInMem, currRecurCounter, accForSubsets) do
  findCombNestedPowersets(elementToAppendToSet, powersetInMem, powersetInMem, currRecurCounter-1, accForSubsets)
end
end
