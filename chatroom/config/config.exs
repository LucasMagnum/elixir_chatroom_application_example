# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chatroom,
  ecto_repos: [Chatroom.Repo]

# Configures the endpoint
config :chatroom, ChatroomWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jXtog13tE9ZTv4I1hH5CJq3W0I02HTZJXUcTheiy7m+Nxmp9UNxJ9BNh1RmHQoj9",
  render_errors: [view: ChatroomWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chatroom.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "rIP9JKTz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
