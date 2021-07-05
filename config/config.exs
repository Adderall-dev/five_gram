# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :five_gram,
  ecto_repos: [FiveGram.Repo]

# Configures the endpoint
config :five_gram, FiveGramWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6B50W+2/Fp40P++DsRIn9mjh2iBctggvu42fmq8w86mUb2Jt3XUqdY8GSmIxohIo",
  render_errors: [view: FiveGramWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FiveGram.PubSub,
  live_view: [signing_salt: "xzEe+mz6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
