defmodule RPG do
  def points_spent(%{strength: strength, dexterity: dexterity, intelligence: intelligence}) do
    %{strength: strength * 2, dexterity: dexterity * 3, intelligence: intelligence * 3}
  end
end

%{strength: 3, dexterity: 5, intelligence: 10}
|> RPG.points_spent()
|> IO.inspect()
