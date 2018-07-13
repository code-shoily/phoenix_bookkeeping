defmodule PhoenixBookkeeping.Repo.Migrations.AddIndicesAccount do
  use Ecto.Migration

  def change do
    create(index(:account, [:parent_id]))
    create(index(:account, [:full_code]))
    create(index(:account, [:currencies]))

    create(unique_index(:account, [:full_code], name: "account_full_code_unique_index"))
    create(unique_index(:account, [:parent_id, :code], name: "account_parent_id_unique_index"))
  end
end
