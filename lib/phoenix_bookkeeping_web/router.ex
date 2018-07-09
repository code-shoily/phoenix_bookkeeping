defmodule PhoenixBookkeepingWeb.Router do
  use PhoenixBookkeepingWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixBookkeepingWeb do
    pipe_through :api
  end
end
