defmodule GameOfTag.Repo do
  use Ecto.Repo,
    otp_app: :game_of_tag,
    adapter: Ecto.Adapters.Postgres
end
