defmodule MatchstickFactory do
  @big_matchstick 50
  @medium_matchstick 20
  @small_matchstick 5

  def boxes(count) do
    #big
    big_matchstick_count = div(count, @big_matchstick)
    big_matchstick_rest  = rem(count, @big_matchstick)

    #medium
    medium_matchstick_count = div(big_matchstick_rest, @medium_matchstick)
    medium_matchstick_rest  = rem(big_matchstick_rest, @medium_matchstick)

    #small
    small_matchstick_count = div(medium_matchstick_rest, @small_matchstick)
    remaining_matchsticks  = rem(medium_matchstick_rest, @small_matchstick)

    %{
      big: big_matchstick_count,
      medium: medium_matchstick_count,
      small: small_matchstick_count,
      remaining_matchsticks: remaining_matchsticks
    }
  end
end
