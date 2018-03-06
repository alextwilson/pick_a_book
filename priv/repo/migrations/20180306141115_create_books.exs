defmodule PickABook.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :author, :string
      add :genre, :string
      add :description, :string

      timestamps()
    end

  end
end
