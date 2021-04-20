defmodule Inmana.Repo.Migrations.CreateRestaurantsTable do
  use Ecto.Migration

  def change do
    create table(:restaurats) do
      add(:email, :string)
      add(:name, :string)

      timestamps()
    end

    create(unique_index(:restaurats, [:email]))
  end
end
