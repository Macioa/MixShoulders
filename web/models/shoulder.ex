defmodule Mixshoulders.Shoulder do
  use Mixshoulders.Web, :model

  schema "shoulders" do
    field :name, :string


    timestamps()
  end

end
