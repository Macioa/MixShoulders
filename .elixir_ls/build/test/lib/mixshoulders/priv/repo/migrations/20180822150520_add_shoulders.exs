defmodule Mixshoulders.Repo.Migrations.AddShoulders do
  use Ecto.Migration

  def change do
    create table(:shoulders) do
      add :name, :string

      timestamps()
    end
  end

end
