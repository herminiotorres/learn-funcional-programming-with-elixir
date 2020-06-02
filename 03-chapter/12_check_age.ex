{age, _} = Integer.parse IO.gets("Person's age:\n")

result = cond do
  age < 13 -> "kid"
  age <= 18 -> "teen"
  age > 18 -> "adult"
end

IO.puts "Result: #{result}"
