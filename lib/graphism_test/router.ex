defmodule GraphismTest.Router do
  use Plug.Router

  plug(Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
    pass: ["*/*"],
    json_decoder: Jason
  )

  plug(:roles)
  plug(:match)
  plug(:dispatch)

  forward("/api/graphql", to: Absinthe.Plug, init_opts: [schema: GraphismTest.Schema])

  forward("/graphiql",
    to: Absinthe.Plug.GraphiQL,
    init_opts: [
      schema: GraphismTest.Schema,
      default_url: "/api/graphql"
    ]
  )

  match _ do
    send_resp(conn, 404, "")
  end

  def roles(conn, _opts) do
    context = %{current_user: %{roles: [:anonymous]}}
    Absinthe.Plug.put_options(conn, context: context)
  end
end
