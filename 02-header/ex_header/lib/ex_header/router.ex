defmodule ExHeader.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  match _ do
    send_resp(conn, 200, "X-From: #{Plug.Conn.get_req_header(conn, "x-from")}")
  end
end
