defmodule MyList do
  def max([head | tail]), do: _max(tail, head)
  defp _max([], acc), do: acc
  defp _max([head | tail], acc) when head > acc, do: _max(tail, head)
  defp _max([_ | tail], acc), do: _max(tail, acc)

  def min([head | tail]), do: _min(tail, head)
  defp _min([], acc), do: acc
  defp _min([head | tail], acc) when head < acc, do: _min(tail, head)
  defp _min([_ | tail], acc), do: _min(tail, acc)
end

MyList.max([4, 2, 16, 9, 10]) |> IO.inspect()
MyList.min([4, 2, 16, 9, 10]) |> IO.inspect()
