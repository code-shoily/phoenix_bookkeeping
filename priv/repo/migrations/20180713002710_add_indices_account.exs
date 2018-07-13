defmodule PhoenixBookkeeping.Repo.Migrations.AddIndicesAccount do
  use Ecto.Migration

  def change do
    create(index("parent_id", [:parent_id]))
    create(index("full_code", [:full_code]))
    create(index("currencies", [:currencies]))
  end
end
