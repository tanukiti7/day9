defmodule Factorial do

  def of(n) when is_integer and n>0 do
    n*of(n-1)
  end

  def of(0), do: 1
  def of(n), do: n*of(n-1)

  def sum(1), do: 1
  def sum(n), do: n+sum(n-1)

  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y,rem(x,y))


  def bilist([]), do: []
  def bilist([head|tail]), do: [head*2|bilist(tail)]

end
