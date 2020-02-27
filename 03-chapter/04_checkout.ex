defmodule Checkout do
  def total_cost(price), do: total_cost(price, 10)
  def total_cost(price, quantity), do: price * quantity
end
