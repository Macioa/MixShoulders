# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mixshoulders,
  ecto_repos: [Mixshoulders.Repo]

# Configures the endpoint
config :mixshoulders, Mixshoulders.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "btX9QtZV6z2Lcl/AuSYcg2FZ3+K811UP78a2LjgCg1vHH0vmoYk9OZVxMr0L8XwO",
  render_errors: [view: Mixshoulders.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mixshoulders.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configure Guardian key
# config :guardian, Guardian,
#   issuer: "MixShoulders",
#   secret_key: "Gi7ijJvMjryErf7+FoMlyR6mToZSNhFBi14aCJjwVPgbPbJTgEtYD6yks/YOgxXI",
#   serializer: MixShoulders.Guardian

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
