start_value = 1
next_fun = fn previous -> previous + 1 end
integers = Stream.iterate(start_value, next_fun)

Enum.take(integers, 50) |> IO.inspect()
