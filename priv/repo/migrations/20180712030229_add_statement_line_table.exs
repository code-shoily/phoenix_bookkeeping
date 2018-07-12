defmodule PhoenixBookkeeping.Repo.Migrations.AddStatementLineTable do
  use Ecto.Migration

  def change do
    create table(:statement_line, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:date, :utc_datetime)
      add(:statement_import_id, references(:statement_import))
      add(:amount, :decimal, precision: 13, scale: 2)
      add(:description, :string)
      add(:type, :string)
      add(:transaction_id, references(:transaction))
      add(:source_data, :jsonb)

      timestamps()
    end
  end
end
