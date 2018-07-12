defmodule PhoenixBookkeeping.Repo.Migrations.AddAccountTable do
  use Ecto.Migration

  def change do
    create table(:account, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:name, :string, size: 50)
      add(:code, :string, size: 3)
      add(:full_code, :string, size: 100)
      add(:type, :string, size: 10)
      add(:is_bank_account, :boolean)
      add(:currencies, {:array, :string})
      timestamps()
    end
  end
end
