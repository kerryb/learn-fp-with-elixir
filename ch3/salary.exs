Code.require_file("tax.ex")

salary =
  "Please enter salary: "
  |> IO.gets()
  |> String.trim()
  |> String.to_integer()

tax = Tax.deduction(salary)
IO.puts("Tax: #{tax}")
IO.puts("Net: #{salary - tax}")
