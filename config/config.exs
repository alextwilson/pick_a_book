# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :pick_a_book, PickABook.Accounts.Guardian,
  issuer: "pick_a_book", # Name of your app/company/product
  secret_key: "WsYUWJ58qoCjSZ3bKWSmhhcl62f2n9TdHaQrgwTCMuEi6FZaiYgfsyuqGrCT1ShW" # Replace this with the output of the mix command

# General application configuration
config :pick_a_book,
  ecto_repos: [PickABook.Repo]

# Configures the endpoint
config :pick_a_book, PickABookWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZnnW7K0Nvrs1ld1thZYEmWvD4ffxzZBeL0mIH5DyGqFAfXoK6r5v+ZILTNZRRY9x",
  render_errors: [view: PickABookWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PickABook.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
