defmodule ExBasic.RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  test "sending a request" do
    conn =
      conn(:get, "/")
      |> ExBasic.Router.call(ExBasic.Router.init([]))

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "Hello, World"
  end
end
