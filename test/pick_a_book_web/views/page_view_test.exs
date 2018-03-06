defmodule PickABookWeb.PageViewTest do
  use PickABookWeb.ConnCase, async: true
  import Phoenix.View

  test "renders index.html" do
    assert render_to_string(PickABookWeb.PageView, "index.html", []) =~
           "Welcome to PickABook!"
  end
end
