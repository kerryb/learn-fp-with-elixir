defmodule EnchanterShop do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end

  @enchanter_name "Edwin"

  def enchant_for_sale(items) do
    items |> Enum.map(&enchant/1)
  end

  defp enchant(%{magic: true} = item), do: item

  defp enchant(item) do
    %{item | title: "#{@enchanter_name}'s #{item.title}", price: item.price * 3, magic: true}
  end
end

EnchanterShop.test_data()
|> EnchanterShop.enchant_for_sale()
|> IO.inspect()
