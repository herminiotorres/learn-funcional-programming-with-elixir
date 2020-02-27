defmodule NumberCompareWithUnless do
  def greate(number, other_number) do
    unless number < other_number do
      number
    else
      other_number
    end
  end
end
