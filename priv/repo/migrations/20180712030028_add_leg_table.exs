defmodule PhoenixBookkeeping.Repo.Migrations.AddLegTable do
  use Ecto.Migration

  def change do
    create table(:leg, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:transaction_id, references(:transaction, type: :uuid))
      add(:account_id, references(:account, type: :uuid))
      add(:amount, :decimal, precision: 13, scale: 2)
      add(:description, :string)

      timestamps()
    end
  end
end
