defmodule Mixshoulders.Repo.Migrations.AddShoulders do
  use Ecto.Migration

  def up do
    drop_if_exists table(:users)

    create table(:shoulders) do
      add :name, :string
      add :dob, :string
      add :contributions, :string
      add :infolink, :string

      timestamps()
    end

    create unique_index(:shoulders, :name, name: :shoulders_name_index)
  end

  def down do
    drop table(:shoulders)
  end

  def change do
    drop table(:shoulders)

    #AddUsers.up()
  end

end
