# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bigbrain,
  ecto_repos: [Bigbrain.Repo]

# Configures the endpoint
config :bigbrain, BigbrainWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UJ+TiW8k7Ix570kHi8Zlp5gg/Gm2G86s6o3Kn1b2h7Z8z+yvYm2lzi5MAAwNpnI2",
  render_errors: [view: BigbrainWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bigbrain.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
