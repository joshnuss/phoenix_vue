defmodule Phoenix.VueWeb.Router do
  use Phoenix.VueWeb, :router

  @vue_routes ~w[
    /
    /contact
  ]

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Phoenix.VueWeb do
    pipe_through :browser

    for path <- @vue_routes do
      get path, PageController, :index
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", Phoenix.VueWeb do
  #   pipe_through :api
  # end
end
