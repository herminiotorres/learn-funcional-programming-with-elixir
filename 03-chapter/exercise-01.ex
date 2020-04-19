defmodule Character do
  def total_points(%{strength: strength, dexterity: dexterity, intelligence: intelligence}) do
    strength * 2 + dexterity * 3 + intelligence * 3
  end

  def total_points(_), do: {:invalid}
end

warrior = %{strength: 5, intelligence: 1, dexterity: 3}
mage = %{strength: 1, intelligence: 5, dexterity: 1}
invalid = %{strength: 5}

IO.inspect(Character.total_points(warrior))
IO.inspect(Character.total_points(mage))
IO.inspect(Character.total_points(invalid))
