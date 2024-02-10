defmodule Graphism.Migration.V4 do
  use Ecto.Migration

  def up do
    alter(table(:catalogs)) do
      add(:starts_at, :time)
    end
  end

  def down do
    []
  end
end
