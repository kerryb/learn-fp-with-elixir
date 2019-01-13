defmodule Tax do
  def deduction(salary) when salary <= 2000, do: 0
  def deduction(salary) when salary <= 3000, do: 0.05 * salary
  def deduction(salary) when salary <= 6000, do: 0.1 * salary
  def deduction(salary), do: 0.15 * salary
end
