use Mix.Config
# We need to run a server during systemtest
config :cornelia_kelinske, CorneliaKelinskeWeb.Endpoint,
  http: [port: 5000],
  server: true

config :cornelia_kelinske, CorneliaKelinske.Email, adapter: Bamboo.TestAdapter
config :cornelia_kelinske, env: :systemtest
config :logger, level: :warn
