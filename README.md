# GraphismTest

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `graphism_test` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:graphism_test, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/graphism_test>.

## Creating catalogs

```
iex> GraphismTest.Schema.Catalog.Api.create(%{id: Ecto.UUID.generate(), name: "default", slug: "default", released: true, premium: false, paid: false})

iex> GraphismTest.Schema.Catalog.Api.create(%{id: Ecto.UUID.generate(), name: "workouts", slug: "workouts", released: true, premium: true, paid: false})

iex> GraphismTest.Schema.Catalog.Api.create(%{id: Ecto.UUID.generate(), name: "medication", slug: "medication", released: true, premium: true, paid: true})
```

## Listing catalogs

```
iex> GraphismTest.Schema.Catalog.Api.list(%{current_user: %{roles: [:anonymous]}})
```
