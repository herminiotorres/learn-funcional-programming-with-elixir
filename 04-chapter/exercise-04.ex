defmodule Sum do
  def up_to(0), do: 0
  def up_to(n), do: up_to_t(n, n, 0)

  defp up_to_t(_n, m, acc) when m == 0, do: acc

  defp up_to_t(n, m, acc) when m > 0 do
    up_to_t(n, m - 1, acc + m)
  end
end

defmodule Math do
  def sum([]), do: 0
  def sum([head]), do: head
  def sum([head | tail]), do: sum_t(tail, head)

  defp sum_t([], acc), do: acc
  defp sum_t([head], acc), do: sum_t([], acc + head)

  defp sum_t([head | tail], acc) do
    sum_t(tail, acc + head)
  end
end
