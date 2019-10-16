#module Main exposing (main)
defmodule Aditya do
  #import Html exposing (..)
  def abc do
    calculatePower(2,5)
  end

  def calculatePower(number, 0) do
    1
  end
  def calculatePower(number, power) do
    sumElement(number, (calculatePower(number, (power - 1))))
  end

  def sumElement(number, 0) do
    0
  end
  def sumElement(number, counter) do
    number + (sumElement(number, (counter - 1)))
  end
end
