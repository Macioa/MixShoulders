defmodule Mixshoulders.Shoulder do
  use Mixshoulders.Web, :model

  schema "shoulders" do
    field :name, :string
    field :dob, :string
    field :contributions, :string
    field :infolink, :string
    belongs_to :user, Mixshoulders.User


    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :dob, :contributions, :infolink])
    |> validate_required(:name)
    |> unique_constraint(:name, name: :shoulders_name_index)
    #|> validate_format(:email, ~r/@/)
  end

end
