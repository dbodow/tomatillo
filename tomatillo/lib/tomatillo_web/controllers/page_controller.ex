defmodule TomatilloWeb.PageController do
  use TomatilloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
