# Given 2 numbers, determine which one is greater. (if -> not allowed)
# (2) [] []
# (4) [] [] [] []

# (4 + 2 = 6) [] [] [] [] {} {}
# (4 - 2 = 2) {} {}


# (6 + 2 = 8) [] [] [] [] {} {} {} {}

# (3) [] [] []
# (1) []
# (3 + 1 = 4) [] [] [] {}
# (3 - 1 = 2) {} {}
# (4 + 2 = 6) [] [] [] {} {} {}

# Tip: abs

max_value = fn first_value, second_value ->
  (first_value + second_value + abs(first_value - second_value)) / 2
end

IO.puts max_value.(13, 7)
IO.puts max_value.(7, 13)
