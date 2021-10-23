import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :deploy_action, DeployActionWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "jlvZ3Kf3zCHxX+GD6jkNZJGPlQFuZ8Zeve4i3fNfV/0KjOtC3Iyylaknq6F30Rus",
  server: false

# In test we don't send emails.
config :deploy_action, DeployAction.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
