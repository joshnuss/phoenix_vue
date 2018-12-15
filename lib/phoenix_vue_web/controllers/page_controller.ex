defmodule Phoenix.VueWeb.PageController do
  use Phoenix.VueWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
