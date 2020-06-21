defmodule HigherOrderFunctions do
  def compose(outer_function, inner_function) do
    fn argument -> outer_function.(inner_function.(argument)) end
  end
end

first_letter_and_upcase = HigherOrderFunctions.compose(&String.upcase/1, &String.first/1)

first_letter_and_upcase.("works") |> IO.inspect()

IO.puts("")

first_letter_and_upcase.("combined") |> IO.inspect()

IO.puts("")

# its use reverse in string
last_letter_and_upcase = &(&1 |> String.reverse() |> String.last() |> String.upcase())
last_letter_and_upcase.("works") |> IO.inspect()

IO.puts("")

last_letter_and_upcase.("combined") |> IO.inspect()

IO.puts("")

"works" |> String.first() |> IO.inspect()
"w" |> String.upcase() |> IO.inspect()

IO.puts("")

"works" |> String.first() |> String.upcase() |> IO.inspect()
