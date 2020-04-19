defmodule Salary do
  def calc(salary) when salary < 2000, do: 0
  def calc(salary) when salary <= 3000, do: salary * 0.05
  def calc(salary) when salary <= 6000, do: salary * 0.10
  def calc(salary), do: salary * 0.15
end

IO.inspect(Salary.calc(1_999.99))
IO.inspect(Salary.calc(2_999.99))
IO.inspect(Salary.calc(5_999.99))
IO.inspect(Salary.calc(6_000.01))
IO.inspect(Salary.calc(15_000))
