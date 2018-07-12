defmodule PhoenixBookkeeping.Repo.Migrations.AddAccountTable do
  use Ecto.Migration

  def change do
    create table(:account, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:name, :string, size: 50, null: false)
      add(:code, :string, size: 3, null: false)
      add(:full_code, :string, size: 100, null: false)
      add(:type, :string, size: 10, null: false)
      add(:is_bank_account, :boolean, default: false)
      add(:currencies, {:array, :string})
      timestamps()
    end
  end
end
