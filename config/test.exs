use Mix.Config

# Configure your database
config :game_of_tag, GameOfTag.Repo,
  username: "postgres",
  password: "postgres",
  database: "game_of_tag_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :game_of_tag, GameOfTagWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
