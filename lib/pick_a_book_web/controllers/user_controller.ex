defmodule PickABookWeb.UserController do
  use PickABookWeb, :controller

  alias PickABook.Accounts
  alias PickABook.Accounts.User

  def new(conn, _params) do
    changeset = Accounts.change_user(%User{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"user" => user_params}) do
    case Accounts.create_user(user_params) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "You have successfully logged in.")
        |> redirect(to: "/")
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end
end
