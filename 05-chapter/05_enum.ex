Enum.each(["dogs", "cats", "flowers"], &IO.puts(String.upcase(&1)))

IO.puts("")

Enum.map(["dogs", "cats", "flowers"], &String.capitalize/1) |> IO.inspect()

IO.puts("")

Enum.reduce([10, 5, 5, 10], 0, &+/2) |> IO.inspect()

IO.puts("")

Enum.filter(["a", "b", "c", "d"], &(&1 > "b")) |> IO.inspect()

IO.puts("")

Enum.count(["dogs", "cats", "flowers"]) |> IO.inspect()

IO.puts("")

Enum.uniq(["a", "a", "b", "b", "b", "c"]) |> IO.inspect()

IO.puts("")

Enum.sum([10, 5, 5, 10]) |> IO.inspect()

IO.puts("")

Enum.sort(["c", "d", "a", "b"], &<=/2) |> IO.inspect()

IO.puts("")

Enum.sort(["c", "d", "a", "b"], &>=/2) |> IO.inspect()

IO.puts("")

Enum.member?([10, 20, 12], 20) |> IO.inspect()

IO.puts("")

Enum.join(["apples", "hot dogs", "flowers"], ", ") |> IO.inspect()

IO.puts("")

upcase = fn {_key, value} -> String.upcase(value) end
Enum.map(%{name: "willy", last_name: "wonka"}, upcase) |> IO.inspect()

IO.puts("")

medals = [
  %{medal: :gold, player: "Anna"},
  %{medal: :silver, player: "Joe"},
  %{medal: :gold, player: "Zoe"},
  %{medal: :bronze, player: "Anna"},
  %{medal: :silver, player: "Anderson"},
  %{medal: :silver, player: "Peter"}
]

Enum.group_by(medals, & &1.medal, & &1.player) |> IO.inspect()
