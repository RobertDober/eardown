defmodule EardownTest do
  use ExUnit.Case
  doctest Eardown

  test "greets the world" do
    assert Eardown.hello() == :world
  end
end
