defmodule Mixshoulders.Repo.Migrations.AddShoulders do
  use Ecto.Migration

  def up do
    drop_if_exists table(:shoulders)

    create table(:shoulders) do
      add :name, :string

      timestamps()
    end
  end

  def down do
    drop table(:shoulders)
  end

end
