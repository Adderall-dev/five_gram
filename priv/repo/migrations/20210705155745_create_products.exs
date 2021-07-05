defmodule FiveGram.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string, null: false
      add :description, :text
      add :price, :decimal, null: false, precision: 19, scale: 4

      timestamps()
    end

    create unique_index(:products, [:name])
  end
end
