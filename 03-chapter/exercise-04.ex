defmodule Tax do
  def calc(salary) when is_number(salary) and salary < 2000, do: 0.00
  def calc(salary) when is_number(salary) and salary <= 3000, do: salary * 0.05
  def calc(salary) when is_number(salary) and salary <= 6000, do: salary * 0.10
  def calc(salary) when is_number(salary), do: salary * 0.15
end

raw = IO.gets("Type your salary, please: ")

case Float.parse(raw) do
  {salary, "\n"} ->
    tax = Tax.calc(salary)
    net = salary - tax

    IO.puts("Net salary: #{net}, tax: #{tax}")

  _ ->
    IO.puts("Invalid number")
end
