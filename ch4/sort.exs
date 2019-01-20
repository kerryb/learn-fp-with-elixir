defmodule Sort do
  # From book
  def ascending([]), do: []
  def ascending([a]), do: [a]

  def ascending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)

    merge(
      ascending(list_a),
      ascending(list_b)
    )
  end

  defp merge([], list_b), do: list_b
  defp merge(list_a, []), do: list_a

  defp merge([head_a | tail_a], list_b = [head_b | _]) when head_a <= head_b do
    [head_a | merge(tail_a, list_b)]
  end

  defp merge(list_a = [head_a | _], [head_b | tail_b]) when head_a > head_b do
    [head_b | merge(list_a, tail_b)]
  end

  #  mine

  def descending([]), do: []
  def descending([a]), do: [a]

  def descending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)

    merge_desc(
      descending(list_a),
      descending(list_b)
    )
  end

  defp merge_desc([], list_b), do: list_b
  defp merge_desc(list_a, []), do: list_a

  defp merge_desc([head_a | tail_a], list_b = [head_b | _]) when head_a >= head_b do
    [head_a | merge_desc(tail_a, list_b)]
  end

  defp merge_desc(list_a = [head_a | _], [head_b | tail_b]) do
    [head_b | merge_desc(list_a, tail_b)]
  end
end

[3, 1, 76, 2] |> Sort.descending() |> IO.inspect()
