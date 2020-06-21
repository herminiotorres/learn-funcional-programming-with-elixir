defmodule MyList do
  def map([], _function), do: []

  def map([head | tail], function) do
    [function.(head) | map(tail, function)]
  end
end

enchanted_items = [
  %{title: "Edwin's Longsword", price: 150},
  %{title: "Healing Potion", price: 60},
  %{title: "Edwin's Rope", price: 30},
  %{title: "Dragon's Spear", price: 100}
]

increase_price = fn item -> %{title: item.title, price: item.price * 1.1} end
MyList.map(enchanted_items, increase_price) |> IO.inspect()

IO.puts("")

update_in_price = fn item -> update_in(item.price, &(&1 * 1.1)) end
MyList.map(enchanted_items, update_in_price) |> IO.inspect()

IO.puts("")

items = ["dogs", "cats", "flowers"]
MyList.map(items, &String.capitalize/1) |> IO.inspect()

IO.puts("")

MyList.map(items, &String.upcase/1) |> IO.inspect()

IO.puts("")

MyList.map(["45.50", "32.12", "86.0"], &String.to_float/1) |> IO.inspect()
