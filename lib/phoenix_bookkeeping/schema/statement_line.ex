defmodule PhoenixBookkeeping.Schema.StatementLine do
  use PhoenixBookkeeping.Schema
  alias PhoenixBookkeeping.Schema.{Transaction, StatementImport}

  schema "statement_line" do
    field(:date, :utc_datetime)
    field(:amount, :decimal, precision: 13, scale: 2)
    field(:description, :string)
    field(:type, :string)
    field(:source_data, :map)

    belongs_to(:statement_import, StatementImport)
    belongs_to(:transaction, Transaction)

    timestamps()
  end
end
