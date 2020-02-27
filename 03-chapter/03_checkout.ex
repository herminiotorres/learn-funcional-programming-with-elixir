defmodule Checkout do
  def total_cost(price, quantity \\ 10), do: price * quantity
end
