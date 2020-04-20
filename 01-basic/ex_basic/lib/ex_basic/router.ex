defmodule ExBasic.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  # Plug use match with _ argument to match any incoming request
  # to this router.
  match _ do
    send_resp(conn, 200, "Hello, World")
  end
end
