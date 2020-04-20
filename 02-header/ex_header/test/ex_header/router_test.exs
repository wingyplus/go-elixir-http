defmodule ExHeader.RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  setup do
    # When using Plug.Conn.put_req_header in test. It's requires to
    # start plug application first.
    Application.ensure_all_started(:plug)
    ExHeader.Router.init([])
  end

  test "sending a request with attach header", opts do
    conn =
      conn(:get, "/")
      |> Plug.Conn.put_req_header("x-from", "wingyplus")
      |> ExHeader.Router.call(opts)

    assert conn.status == 200
    assert conn.resp_body == "X-From: wingyplus"
  end
end
