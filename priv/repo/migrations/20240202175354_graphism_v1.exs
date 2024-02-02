defmodule Graphism.Migration.V1 do
  use Ecto.Migration

  def up do
    create(table(:catalogs, primary_key: false)) do
      add(:id, :uuid, null: false, primary_key: true)
      add(:name, :string, unique: true, null: false)
      add(:slug, :string, unique: true, null: false)
      timestamps()
    end

    create(unique_index(:catalogs, [:slug], name: :catalogs_slug_key))
    create(unique_index(:catalogs, [:name], name: :catalogs_name_key))
  end

  def down do
    []
  end
end
