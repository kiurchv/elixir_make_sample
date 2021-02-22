defmodule ElixirMakeSampleTest do
  use ExUnit.Case
  doctest ElixirMakeSample

  test "greets the world" do
    assert ElixirMakeSample.hello() == :world
  end
end
