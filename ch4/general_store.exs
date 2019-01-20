defmodule GeneralStore do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end

  def filter_items(items, magic: magic), do: filter_items(items, magic, [])
  defp filter_items([], _, result), do: result |> Enum.reverse()

  defp filter_items([%{magic: magic} = head | tail], magic, result) do
    filter_items(tail, magic, [head | result])
  end

  defp filter_items([_ | tail], magic, result) do
    filter_items(tail, magic, result)
  end
end

GeneralStore.test_data() |> GeneralStore.filter_items(magic: true) |> IO.inspect()
GeneralStore.test_data() |> GeneralStore.filter_items(magic: false) |> IO.inspect()
