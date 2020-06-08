defmodule Sort do
  def ascending([]), do: []
  def ascending([head]), do: [head]

  def ascending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)

    merge(
      ascending(list_a),
      ascending(list_b)
    )
  end

  def descending([]), do: []
  def descending([head]), do: [head]

  def descending(list) do
    ascending(list) |> Enum.reverse()
  end

  defp merge([], list_b), do: list_b
  defp merge(list_a, []), do: list_a

  defp merge([head_a | tail_a], list_b = [head_b | _]) when head_a <= head_b do
    [head_a | merge(tail_a, list_b)]
  end

  defp merge(list_a = [head_a | _], [head_b | tail_b]) when head_a > head_b do
    [head_b | merge(list_a, tail_b)]
  end
end
