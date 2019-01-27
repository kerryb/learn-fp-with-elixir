defmodule Quicksort do
  def sort([]), do: []
  def sort([a]), do: [a]

  def sort([head | tail]) do
    {less, more} = tail |> Enum.split_with(&(&1 < head))
    sort(less) ++ [head | sort(more)]
  end
end

[50, 2, 4, 2, 123, 1, 6, 10] |> Quicksort.sort() |> IO.inspect()
