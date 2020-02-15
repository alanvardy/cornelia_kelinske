use Mix.Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.

port =
  System.get_env("PORT") ||
    raise """
    environment variable PORT is missing.
    For example: PORT=5000
    """

secret_key_base =
  System.get_env("SECRET_KEY_BASE") ||
    raise """
    environment variable SECRET_KEY_BASE is missing.
    You can generate one by calling: mix phx.gen.secret
    """

web_host =
  System.get_env("WEB_HOST") ||
    raise """
    environment variable WEB_HOST is missing.
    For example: WEB_HOST=something.com
    """

full_web_host =
  System.get_env("FULL_WEB_HOST") ||
    raise """
    environment variable WEB_HOST is missing.
    For example: FULL_WEB_HOST=https://something.com
    """

sendgrid_api_key =
  System.get_env("SENDGRID_API_KEY") ||
    raise """
    environment variable SENDGRID_API_KEY is missing.
    For example: SENDGRID_API_KEY=xxxxxxxxxxxxxxxxxxxxx
    """

recaptcha_private_key =
  System.get_env("RECAPTCHA_PRIVATE_KEY") ||
    raise """
    environment variable RECAPTCHA_PRIVATE_KEY is missing.
    For example: RECAPTCHA_PRIVATE_KEY=xxxxxxxxxxxxxxxx
    """

recaptcha_public_key =
  System.get_env("RECAPTCHA_PUBLIC_KEY") ||
    raise """
    environment variable RECAPTCHA_PUBLIC_KEY is missing.
    For example: RECAPTCHA_PUBLIC_KEY=xxxxxxxxxxxxxxxxxx
    """

config :cornelia_kelinske, CorneliaKelinskeWeb.Endpoint,
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

config :cornelia_kelinske, :env, :prod

config :recaptcha,
  public_key: recaptcha_public_key,
  secret: recaptcha_private_key,
  json_library: Jason

config :cornelia_kelinske, CorneliaKelinske.Email,
api_key: sendgrid_api_key,
adapter: Bamboo.SendGridAdapter,
  hackney_opts: [
    recv_timeout: :timer.minutes(1)
  ]

config :cornelia_kelinske, CorneliaKelinskeWeb.Endpoint,
  http: [:inet6, port: String.to_integer(port)],
  url: [host: web_host, path: "/", scheme: "https", port: 443],
  load_from_system_env: true,
  cache_static_manifest: "priv/static/cache_manifest.json",
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  secret_key_base: secret_key_base,
  check_origin: [full_web_host]

# ## SSL Support
#
# To get SSL working, you will need to add the `https` key
# to the previous section and set your `:url` port to 443:
#
#     config :cornelia_kelinske, CorneliaKelinskeWeb.Endpoint,
#       ...
#       url: [host: "example.com", port: 443],
#       https: [
#         :inet6,
#         port: 443,
#         cipher_suite: :strong,
#         keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#         certfile: System.get_env("SOME_APP_SSL_CERT_PATH")
#       ]
#
# The `cipher_suite` is set to `:strong` to support only the
# latest and more secure SSL ciphers. This means old browsers
# and clients may not be supported. You can set it to
# `:compatible` for wider support.
#
# `:keyfile` and `:certfile` expect an absolute path to the key
# and cert in disk or a relative path inside priv, for example
# "priv/ssl/server.key". For all supported SSL configuration
# options, see https://hexdocs.pm/plug/Plug.SSL.html#configure/1
#
# We also recommend setting `force_ssl` in your endpoint, ensuring
# no data is ever sent via http, always redirecting to https:
#
#     config :cornelia_kelinske, CorneliaKelinskeWeb.Endpoint,
#       force_ssl: [hsts: true]
#
# Check `Plug.SSL` for all available options in `force_ssl`.
