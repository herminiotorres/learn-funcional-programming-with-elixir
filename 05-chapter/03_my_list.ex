defmodule MyList do
  def reduce([], accumulator, _function), do: accumulator

  def reduce([head | tail], accumulator, function) do
    reduce(tail, function.(head, accumulator), function)
  end
end

enchanted_items = [
  %{title: "Edwin's Longsword", price: 150},
  %{title: "Healing Potion", price: 60},
  %{title: "Edwin's Rope", price: 30},
  %{title: "Dragon's Spear", price: 100}
]

sum_price = fn item, sum -> item.price + sum end
MyList.reduce(enchanted_items, 0, sum_price) |> IO.inspect()

IO.puts("")

MyList.reduce([10, 5, 5, 10], 0, &+/2) |> IO.inspect()

IO.puts("")

MyList.reduce([5, 4, 3, 2, 1], 1, &*/2) |> IO.inspect()

IO.puts("")

MyList.reduce([100, 20, 400, 200], 100, &max/2) |> IO.inspect()

IO.puts("")

MyList.reduce([100, 20, 400, 200], 100, &min/2) |> IO.inspect()
