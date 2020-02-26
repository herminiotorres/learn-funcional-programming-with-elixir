defmodule Ecommerce.Checkout do
  def total_price(price, tax_rate) do
    price * (tax_rate + 1)
  end
end
