defmodule TarkusWeb.Router do
  use TarkusWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TarkusWeb do
    pipe_through :api

    post "/report", ProductsReportController, :index
  end
end
