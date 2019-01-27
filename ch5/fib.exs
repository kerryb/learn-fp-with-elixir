defmodule Fib do
  def generate(n) do
    {0, 1}
    |> Stream.unfold(fn {previous, current} ->
      {current, {current, previous + current}}
    end)
    |> Enum.take(n)
  end
end

10 |> Fib.generate() |> IO.inspect()
