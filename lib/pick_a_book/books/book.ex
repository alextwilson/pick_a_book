defmodule PickABook.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset


  schema "books" do
    field :author, :string
    field :description, :string
    field :genre, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :author, :genre, :description])
    |> validate_required([:title, :author, :genre, :description])
  end
end
