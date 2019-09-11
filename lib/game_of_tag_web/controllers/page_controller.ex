defmodule GameOfTagWeb.PageController do
  use GameOfTagWeb, :controller
  alias GameOfTag.GameState

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    render(
      conn,
      "index.html",
      screen_height: GameState.screen_height(),
      screen_width: GameState.screen_width()
    )
  end
end
