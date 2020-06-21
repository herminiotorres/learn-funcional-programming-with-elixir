defmodule Halloween do
  def give_candy(kids) do
    ~w(chocolate jelly mint)
    |> Stream.cycle()
    |> Enum.zip(kids)
  end
end

kids = ~w(Mike Anna Ted Mary Alex Emma)
Halloween.give_candy(kids) |> IO.inspect()
