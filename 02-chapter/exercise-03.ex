tax = fn price ->
  price * 0.12
end

apply_tax = fn price ->
  IO.puts("Price: #{price + tax.(price)} - Tax: #{tax.(price)}")
end

Enum.each([12.5, 30.99, 250.49, 18.80], apply_tax)
