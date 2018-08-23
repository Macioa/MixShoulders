defmodule Mixshoulders.Repo.Migrations.AddUsers do
  use Ecto.Migration

  def up do
    drop_if_exists table(:users)

    create table(:users) do
      add :username, :string
      add :email, :string
      add :encryptedpass, :string

      timestamps()
    end
  end

  def down do
    drop table(:users)
  end

end
