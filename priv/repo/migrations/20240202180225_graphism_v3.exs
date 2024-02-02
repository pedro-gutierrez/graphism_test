defmodule Graphism.Migration.V3 do
  use Ecto.Migration

  def up do
    alter(table(:catalogs)) do
      add(:paid, :boolean, null: false)
      add(:premium, :boolean, null: false)
    end
  end

  def down do
    []
  end
end
