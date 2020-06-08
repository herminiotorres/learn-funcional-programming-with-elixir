defmodule MyList do
  def max([]), do: nil
  def max([head]), do: head

  def max([head | tail]) do
    get_max(tail, head)
  end

  defp get_max([head | tail], biggest) when biggest >= head do
    get_max(tail, biggest)
  end

  defp get_max([head | tail], biggest) when biggest < head do
    get_max(tail, head)
  end

  defp get_max([], biggest), do: biggest

  def min([]), do: nil
  def min([head]), do: head

  def min([head | tail]) do
    get_min(tail, head)
  end

  defp get_min([head | tail], smallest) when smallest <= head do
    get_min(tail, smallest)
  end

  defp get_min([head | tail], smallest) when smallest > head do
    get_min(tail, head)
  end

  defp get_min([], smallest), do: smallest
end
