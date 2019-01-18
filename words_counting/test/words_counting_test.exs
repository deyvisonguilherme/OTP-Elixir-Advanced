defmodule WordsCountingTest do
  use ExUnit.Case
  doctest WordsCounting

  test "greets the world" do
    assert WordsCounting.hello() == :world
  end
end
