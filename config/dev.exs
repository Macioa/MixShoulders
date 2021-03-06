use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :mixshoulders, Mixshoulders.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch", "--stdin",
                    cd: Path.expand("../", __DIR__)]]


# Watch static and templates for browser reloading.
config :mixshoulders, Mixshoulders.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ],
  #config :mixshoulders, Mixshoulders.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "btX9QtZV6z2Lcl/AuSYcg2FZ3+K811UP78a2LjgCg1vHH0vmoYk9OZVxMr0L8XwO",
  render_errors: [view: Mixshoulders.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mixshoulders.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :mixshoulders, Mixshoulders.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "ryanm",
  password: "1234",
  database: "mixshoulders_dev",
  hostname: "localhost",
  pool_size: 10

# Configure guardian
# config :mixshoulders, MixShoulders.Guardian,
#   issuer: MixShoulders,
#   secret_key: "Gi7ijJvMjryErf7+FoMlyR6mToZSNhFBi14aCJjwVPgbPbJTgEtYD6yks/YOgxXI",
#   serializer: MixShoulders.Guardian

# config :mixshoulders, MixShoulders.Guardian,
#   issuer: "guardian_demo",
#   secret_key: {:system, "Gi7ijJvMjryErf7+FoMlyR6mToZSNhFBi14aCJjwVPgbPbJTgEtYD6yks/YOgxXI"}
