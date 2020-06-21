defmodule MyList do
  def each([], _function), do: nil

  def each([head | tail], function) do
    function.(head)
    each(tail, function)
  end
end

enchanted_items = [
  %{title: "Edwin's Longsword", price: 150},
  %{title: "Healing Potion", price: 60},
  %{title: "Edwin's Rope", price: 30},
  %{title: "Dragon's Spear", price: 100}
]

MyList.each(enchanted_items, fn item -> IO.puts(item.title) end)

IO.puts("")

items = ["dogs", "cats", "flowers"]
MyList.each(items, fn item -> IO.puts(String.capitalize(item)) end)

IO.puts("")

MyList.each(items, fn item -> IO.puts(String.upcase(item)) end)

IO.puts("")

MyList.each(items, fn item -> IO.puts(String.length(item)) end)
