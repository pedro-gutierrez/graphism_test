defmodule GraphismTestTest do
  use ExUnit.Case
  doctest GraphismTest

  test "greets the world" do
    assert GraphismTest.hello() == :world
  end
end
