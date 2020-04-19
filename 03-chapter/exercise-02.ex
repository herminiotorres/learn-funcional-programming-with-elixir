defmodule TicTacToe do
  def winner({j, j, j, _, _, _, _, _, _}) do
    {:winner, j}
  end

  def winner({_, _, _, j, j, j, _, _, _}) do
    {:winner, j}
  end

  def winner({_, _, _, _, _, _, j, j, j}) do
    {:winner, j}
  end

  def winner({j, _, _, j, _, _, j, _, _}) do
    {:winner, j}
  end

  def winner({_, j, _, _, j, _, _, j, _}) do
    {:winner, j}
  end

  def winner({_, _, j, _, _, j, _, _, j}) do
    {:winner, j}
  end

  def winner({_, _, j, _, j, _, j, _, _}) do
    {:winner, j}
  end

  def winner({j, _, _, _, j, _, _, _, j}) do
    {:winner, j}
  end

  def winner({_, _, _, _, _, _, _, _, _}) do
    {:no_winner}
  end
end

IO.inspect(TicTacToe.winner({:x, :o, :x, :o, :x, :o, :o, :o, :x}))

IO.inspect(TicTacToe.winner({:x, :o, :x, :o, :x, :o, :o, :x, :o}))
