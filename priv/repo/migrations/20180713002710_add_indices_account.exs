defmodule PhoenixBookkeeping.Repo.Migrations.AddIndicesAccount do
  use Ecto.Migration

  def change do
    create(index("parent", [:parent_id], prefix: "idx"))
    create(index("full_code", [:full_code], prefix: "idx"))
    create(index("currencies", [:currencies], prefix: "idx"))
  end
end
