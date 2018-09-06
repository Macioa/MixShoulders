defmodule Mixshoulders.Repo.Migrations.AddIdToShoulders do
  use Ecto.Migration

  def change do
    alter table(:shoulders) do
      add :shoulder_id, references(:shoulders)
    end
  end
end
