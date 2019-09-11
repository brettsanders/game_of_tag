defmodule GameOfTagWeb.PageController do
  use GameOfTagWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
