import Config

config :graphism_test, ecto_repos: [GraphismTest.Repo]

config :graphism_test, GraphismTest.Repo, database: "graphism_test"

config :graphism, schema: GraphismTest.Schema
