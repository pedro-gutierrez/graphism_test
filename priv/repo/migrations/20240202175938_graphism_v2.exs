defmodule Graphism.Migration.V2 do
  use Ecto.Migration

  def up do
    alter(table(:catalogs)) do
      add(:released, :boolean, null: false)
    end
  end

  def down do
    []
  end
end
