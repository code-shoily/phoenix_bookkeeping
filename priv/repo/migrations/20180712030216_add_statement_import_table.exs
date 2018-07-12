defmodule PhoenixBookkeeping.Repo.Migrations.AddStatementImportTable do
  use Ecto.Migration

  def change do
    create table(:statement_import, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:bank_account_id, references(:account))
      add(:source, :string, size: 50)
      add(:extra, :jsonb)

      timestamps()
    end
  end
end
