# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_bookkeeping,
  ecto_repos: [PhoenixBookkeeping.Repo]

# Configures the endpoint
config :phoenix_bookkeeping, PhoenixBookkeepingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BiiNlMvV5K0eu9oWbua3JISTggqYRk7SeYS5qfZ24pK1d+zQP0j4+UV7l6l9jf+s",
  render_errors: [view: PhoenixBookkeepingWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixBookkeeping.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
