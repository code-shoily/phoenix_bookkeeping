defmodule PhoenixBookkeeping.Schema.Leg do
  use PhoenixBookkeeping.Schema
  alias PhoenixBookkeeping.Schema.{Transaction, Account}

  schema "leg" do
    field(:amount, :decimal, precision: 13, scale: 2)
    field(:description, :string)
    belongs_to(:transaction, Transaction)
    belongs_to(:account, Account)
    timestamps()
  end
end
