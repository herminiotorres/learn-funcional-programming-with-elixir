defmodule TailCallFactorial do
  def of(n), do: factorial_of(n, 1)
  defp factorial_of(0, acc), do: acc
  defp factorial_of(n, acc) when n > 0 do
    factorial_of(n - 1, n * acc)
  end
end
