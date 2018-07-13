defmodule PhoenixBookkeeping.Repo.Migrations.AddStatementLineTable do
  use Ecto.Migration

  def change do
    create table(:statement_line, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:date, :utc_datetime, default: fragment("NOW()"))
      add(:statement_import_id, references(:statement_import, type: :uuid), null: false)
      add(:amount, :decimal, precision: 13, scale: 2, null: false)
      add(:description, :string)
      add(:type, :string, null: false)
      add(:transaction_id, references(:transaction, type: :uuid), null: false)
      add(:source_data, :jsonb)

      timestamps()
    end
  end
end
