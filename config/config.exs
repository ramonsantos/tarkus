# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :tarkus, TarkusWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZcIKE01/VjGcP9h/AfB8hsMkBUp2M44c2Vm5soBmR7mXOkZcfKrcBIMb106VNQqI",
  render_errors: [view: TarkusWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Tarkus.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
