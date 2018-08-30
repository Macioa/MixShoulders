defmodule Mixshoulders.Shoulder do
  use Mixshoulders.Web, :model

  schema "shoulders" do
    field :name, :string
    field :dob, :string
    field :contributions, :string
    field :infolink, :string


    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> validate_required(:name)
    |> unique_constraint(:name)
    #|> validate_format(:email, ~r/@/)
  end

end
