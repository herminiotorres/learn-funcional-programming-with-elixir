defmodule MyList do
  def filter([], _function), do: []

  def filter([head | tail], function) do
    case function.(head) do
      true -> [head | filter(tail, function)]
      _ -> filter(tail, function)
    end
  end
end

enchanted_items = [
  %{title: "Edwin's Longsword", price: 150},
  %{title: "Healing Potion", price: 60},
  %{title: "Edwin's Rope", price: 30},
  %{title: "Dragon's Spear", price: 100}
]

small_than_70 = fn item -> item.price < 70 end
MyList.filter(enchanted_items, small_than_70) |> IO.inspect()

IO.puts("")

MyList.filter(["a", "b", "c", "d"], &(&1 > "b")) |> IO.inspect()

IO.puts("")

MyList.filter([100, 200, 300, 400], &(&1 < 300)) |> IO.inspect()

IO.puts("")

MyList.filter(["Beatriz", "Alex", "Mike", "Ana"], &String.starts_with?(&1, "A")) |> IO.inspect()

IO.puts("")

MyList.filter(["a@b", "t.t", "a@b.c"], &String.contains?(&1, "@")) |> IO.inspect()
