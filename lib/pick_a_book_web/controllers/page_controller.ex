defmodule PickABookWeb.PageController do
  use PickABookWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
