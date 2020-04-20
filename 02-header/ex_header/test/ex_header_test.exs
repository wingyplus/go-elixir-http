defmodule ExHeaderTest do
  use ExUnit.Case
  doctest ExHeader

  test "greets the world" do
    assert ExHeader.hello() == :world
  end
end
