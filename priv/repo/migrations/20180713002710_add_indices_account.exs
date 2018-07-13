defmodule PhoenixBookkeeping.Repo.Migrations.AddIndicesAccount do
  use Ecto.Migration

  def change do
    create(index(:account, [:parent_id]))
    create(index(:account, [:full_code]))
    create(index(:account, [:currencies]))
  end
end
