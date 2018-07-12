defmodule PhoenixBookkeeping.Repo.Migrations.AddLegTable do
  use Ecto.Migration

  def change do
    create table(:leg, primary_key: false) do
      add(:id, :uuid, primary_key: false)
      add(:transaction, references(:transaction))
      add(:account, references(:account))
      add(:amount, :decimal)
      add(:description, :string)

      timestamps()
    end
  end
end
