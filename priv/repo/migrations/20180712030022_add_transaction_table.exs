defmodule PhoenixBookkeeping.Repo.Migrations.AddTransactionTable do
  use Ecto.Migration

  def change do
    create table(:transaction, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:date, :utc_datetime)
      add(:description, :string)
      timestamps()
    end
  end
end
