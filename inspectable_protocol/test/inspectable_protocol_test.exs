defmodule InspectableProtocolTest do
  use ExUnit.Case
  doctest InspectableProtocol

  test "greets the world" do
    assert InspectableProtocol.hello() == :world
  end
end
