defmodule Mixshoulders.ShoulderController do
  import Plug.Conn
  use Mixshoulders.Web, :controller

  alias Mixshoulders.Shoulder

  def add(conn, _params) do
    changeset = Mixshoulders.Shoulder.changeset(%Mixshoulders.Shoulder{}, %{})
    if get_session(conn, :message) do
      render conn, "add.html", changeset: changeset
      else
      redirect(conn, to: "/register")
    end
  end

  def make(conn, params) do
    IO.inspect(params)
    %{"shoulder"=>shoulderparams}=params
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

  def index(conn, _params) do
    shoulders = Repo.all(Shoulder)
    render conn, "index.html", shoulders: shoulders
  end

  def show(conn, %{"id" => shoulder_id}) do
    shoulder = Repo.get!(Shoulder, shoulder_id)
    render conn, "show.html", shoulder: shoulder
  end

  def delete(conn, %{"id" => shoulder_id}) do
    if(get_session(conn, :message)) do
      Repo.get!(Shoulder, shoulder_id) |> Repo.delete!
      redirect(conn, to: "/index")
      else
      redirect(conn, to: "/register")
    end
  end


end
