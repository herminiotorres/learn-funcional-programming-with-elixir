defmodule EnchanterShop do
  @echanter_name "Edwin"

  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 50, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end

  def echanter_for_sale([]), do: []

  def echanter_for_sale([item = %{magic: true} | incoming_items]) do
    [item | echanter_for_sale(incoming_items)]
  end

  def echanter_for_sale([item | incoming_items]) do
    new_item = %{
      title: "#{@echanter_name}'s #{item.title}",
      price: item.price * 3,
      magic: true
    }

    [new_item | echanter_for_sale(incoming_items)]
  end
end
