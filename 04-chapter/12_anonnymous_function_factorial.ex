fact_gen = fn my_fun ->
  fn
    0 -> 1
    n when n > 0 -> n * my_fun.(my_fun).(n - 1)
  end
end

factorial = fact_gen.(fact_gen)
IO.puts factorial.(5)
IO.puts ""
IO.puts factorial.(10)
