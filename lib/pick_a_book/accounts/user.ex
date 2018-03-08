defmodule PickABook.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Comeonin.Bcrypt

  schema "users" do
    field :email, :string
    # field :crypted_password, :string
    field :password, :string
    field :username, :string

    timestamps()
  end
  @doc false
  # def changeset(user, attrs) do
  #   user
  #   |> cast(attrs, [:username, :email, :password])
  #   |> validate_required([:username, :email, :password])
  #   |> unique_constraint(:username)
  #   |> unique_constraint(:email)
  #   |> validate_format(:email, ~r/@/)
  #   |> validate_length(:password, min: 6)
  # end


def changeset(user, attrs) do
  user
  |> cast(attrs, [:username, :password, :email])
  |> validate_required([:username, :email, :password])
  |> unique_constraint(:username)
  |> unique_constraint(:email)
  |> unique_constraint(:password)
  |> validate_format(:email, ~r/@/)
  |> validate_length(:password, min: 6)
  |> put_pass_hash()
end

defp put_pass_hash(%Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset) do
  change(changeset, password: Bcrypt.hashpwsalt(password))
end
defp put_pass_hash(changeset), do: changeset
end
