defmodule PickABookWeb.BookController do
  use PickABookWeb, :controller

  def new(conn, _params) do
    render conn, "new.html"
  end
end
