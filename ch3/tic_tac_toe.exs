defmodule TicTacToe do
  def winner({a, a, a, _, _, _, _, _, _}), do: {:winner, a}
  def winner({_, _, _, a, a, a, _, _, _}), do: {:winner, a}
  def winner({_, _, _, _, _, _, a, a, a}), do: {:winner, a}
  def winner({a, _, _, a, _, _, a, _, _}), do: {:winner, a}
  def winner({_, a, _, _, a, _, _, a, _}), do: {:winner, a}
  def winner({_, _, a, _, _, a, _, _, a}), do: {:winner, a}
  def winner({a, _, _, _, a, _, _, _, a}), do: {:winner, a}
  def winner({_, _, a, _, a, _, a, _, _}), do: {:winner, a}
  def winner(_), do: :mno_winner
end

{:x, :o, :x, :o, :x, :o, :o, :o, :x}
|> TicTacToe.winner()
|> IO.inspect()

{:x, :o, :x, :o, :x, :o, :o, :x, :o}
|> TicTacToe.winner()
|> IO.inspect()
