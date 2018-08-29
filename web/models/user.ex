defmodule Mixshoulders.User do
  use Mixshoulders.Web, :model

  schema "users" do
    field :username, :string
    field :email, :string
    field :password, :string, virtual: true # virtual tag allows us to create a changeset with the password attribute, but it will not be persisted http://nithinbekal.com/posts/phoenix-authentication/
    field :hashpass, :string

    timestamps()
  end

  @required_fields ~w(username email password)
  @optional_fields ~w(encryptedpass)

  def changeset(struct, params \\ %{}) do
    struct
    #|> cast(params, [:username, :email, :password])
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required([:username, :password, :email])
    |> unique_constraint(:username, name: :users_username_index)
    |> unique_constraint(:username, name: :users_username_index)
    |> validate_format(:email, ~r/@/)
    |> validate_length(:password, min: 8)
    |> validate_length(:username, min: 4)
  end

end
