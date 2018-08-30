defmodule Mixshoulders.ShoulderController do
  import Plug.Conn
  use Mixshoulders.Web, :controller

  alias Mixshoulders.Shoulder

  # def add(conn, _params) do
  #   #IO.Inpsect(conn)
  #   #render conn, "add.html"
  # end

  def add(conn, _params) do
    changeset = Mixshoulders.Shoulder.changeset(%Mixshoulders.Shoulder{}, %{})
    if get_session(conn, :message) do
      render conn, "add.html", changeset: changeset
      else
      redirect(conn, to: "/register")
    end
  end

  def make(conn, %{"shoulder"=>shoulderparams}) do
    %{"name" => name, "dob" => dob, "contributions" => contributions, "infolink" => infolink} = shoulderparams
    changeset = Shoulder.changeset(%Shoulder{}, %{name: name, dob: dob, contributions: contributions, infolink: infolink})
    case Repo.insert changeset do
      {:ok, _post} ->
        conn
          |> put_flash(:info, "Shoulder created")
          |> configure_session(renew: true)
          |> redirect(to: "/add")
      {:error, changeset} ->
        IO.inspect(changeset)
        conn
          |>render("add.html", changeset: changeset)
    end
  end


end
