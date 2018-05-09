defmodule TarkusWeb.Router do
  use TarkusWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TarkusWeb do
    pipe_through :api

    post "/send", EmailSenderController, :index
  end
end
