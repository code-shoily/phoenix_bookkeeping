defmodule PhoenixBookkeeping.Schema.Transaction do
  use PhoenixBookkeeping.Schema

  schema "transaction" do
    field(:date, :utc_datetime)
    field(:description, :string)
    timestamps()
  end
end
