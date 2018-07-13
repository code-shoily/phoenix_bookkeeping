defmodule PhoenixBookkeeping.Repo.Migrations.AddSelfReferenceToAccountTable do
  use Ecto.Migration

  def change do
    alter table(:account) do
      add(:parent_id, references(:account, type: :uuid))
    end
  end
end
