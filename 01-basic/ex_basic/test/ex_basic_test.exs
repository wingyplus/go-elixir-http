defmodule ExBasicTest do
  use ExUnit.Case
  doctest ExBasic

  test "greets the world" do
    assert ExBasic.hello() == :world
  end
end
