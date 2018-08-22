defmodule Mixshoulders.User do
  use Mixshoulders.Web, :model

  schema "users" do
    field :username, :string
    field :email, :string
    field :password, :string

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end

end
