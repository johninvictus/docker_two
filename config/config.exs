# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :docker_two,
  ecto_repos: [DockerTwo.Repo]

# Configures the endpoint
config :docker_two, DockerTwoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0f3bQHPe4tpDJrf5ij7h1SfAvT/E3uS51I/9Xay+NyxD3S2MN26UvxUCpiccOrWV",
  render_errors: [view: DockerTwoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DockerTwo.PubSub, adapter: Phoenix.PubSub.PG2]

config :mix_docker, image: "johninvictus/docker_two"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
