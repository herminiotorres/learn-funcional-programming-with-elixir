defmodule WordBuilder do
  def build(alphabet, positions) do
    # partial = fn at -> String.at(alphabet, at) end
    # letters = Enum.map(positions, partial)
    letters = Enum.map(positions, &String.at(alphabet, &1))

    Enum.join(letters)
    |> IO.inspect()
  end
end

WordBuilder.build("world", [4, 1, 1, 2])
