defmodule GeneralStore do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end

  def filter_items(items, magic: magic?) do
    filter_items(items, magic?, [])
  end

  def filter_items([], _magic?, filtered_items), do: filtered_items

  def filter_items([item | items], magic?, filtered_items) do
    cond do
      item.magic == magic? -> filter_items(items, magic?, [item | filtered_items])
      true -> filter_items(items, magic?, filtered_items)
    end
  end
end
