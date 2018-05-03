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

# Configures the mailer
config :tarkus, Tarkus.Mailer,
  adapter: Bamboo.SMTPAdapter,
  server: "smtp.gmail.com",
  port: 587,
  tls: :if_available,
  allowed_tls_versions: [:"tlsv1", :"tlsv1.1", :"tlsv1.2"],
  ssl: false,
  retries: 1

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Secret keys
import_config "app.secret.exs"
