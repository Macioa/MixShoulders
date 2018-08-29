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

    create unique_index(:users, :username, name: :users_username_index)
    create unique_index(:users, :username, name: :users_email_index)
  end

  def down do
    drop table(:users)
  end

  def change do
    drop table(:users)

    #AddUsers.up()
  end


end
