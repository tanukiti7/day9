defmodule String100knock do

  def q1(x) do
    a = String.codepoints(x)
        |>Enum.take_every(2)
        |>Enum.join
  end

  def q2(x,y) do
    a = [String.codepoints(x),String.codepoints(y)]
        |>List.zip
        |>Enum.map(fn {g,h} -> "#{g}#{h}" end)
        |>Enum.join
  end

  def q3(x) do
    String.replace(x,~r/[,.]/,"")
      |> String.split(" ")
      |> Enum.map(fn x -> String.length(x)end)
  end

end
