defmodule PhoenixBookkeeping.Schema.StatementImport do
  use PhoenixBookkeeping.Schema
  alias PhoenixBookkeeping.Schema.Account

  schema "statement_import" do
    belongs_to(:bank_account_id, Account)
    field(:source, :string)
    field(:extra, :map)

    timestamps()
  end
end
