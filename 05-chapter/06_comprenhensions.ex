for item <- ["dogs", "cats", "flowers"], do: String.upcase(item) |> IO.inspect()

IO.puts("")

for name <- ["Willy", "Anna"], class <- ["Math", "English"], do: {name, class} |> IO.inspect()

IO.puts("")

parseds = for item <- ["10", "hot dogs", "20"], do: Integer.parse(item)
IO.inspect(parseds)

IO.puts("")

for {number, _} <- parseds, do: number |> IO.inspect()

IO.puts("")

for number <- [1, 2, 3, 4, 5, 6, 7, 8, 9], number > 5, do: number |> IO.inspect()
