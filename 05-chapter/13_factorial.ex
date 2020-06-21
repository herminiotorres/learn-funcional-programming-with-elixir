defmodule Factorial do
  def of(0), do: 1

  def of(n) when n > 0 do
    Stream.iterate(1, &(&1 + 1))
    |> Enum.take(n)
    |> Enum.reduce(&(&1 * &2))
  end
end

Factorial.of(0) |> IO.inspect()
Factorial.of(1) |> IO.inspect()
Factorial.of(5) |> IO.inspect()
Factorial.of(10_000) |> IO.inspect()
