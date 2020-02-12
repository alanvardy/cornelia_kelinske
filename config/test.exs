use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cornelia_kelinske, CorneliaKelinskeWeb.Endpoint,
  http: [port: 4002],
  server: false

config :cornelia_kelinske, CorneliaKelinske.Email, adapter: Bamboo.TestAdapter

# Print only warnings and errors during test
config :logger, level: :warn

config :cornelia_kelinske, :env, :test
