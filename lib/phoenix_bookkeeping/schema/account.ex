defmodule PhoenixBookkeeping.Schema.Account do
  use PhoenixBookkeeping.Schema

  schema "account" do
    field(:name, :string)
    field(:code, :string)
    field(:full_code, :string)
    field(:type, :string)
    field(:is_bank_account, :boolean)
    field(:currencies, {:array, :string})
    timestamps()
  end
end
