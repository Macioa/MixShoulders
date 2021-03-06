defmodule Mixshoulders.UserController do
  import Plug.Conn
  use Mixshoulders.Web, :controller
  #plug :scrub_params, "post" when action in [:create]

  alias Mixshoulders.User

  def create(conn, %{"user"=>userparams}) do
    %{"password" => password, "username" => username, "email" => email} = userparams
    changeset = User.changeset(%User{}, %{username: username, password: password, email: email})
    message = get_session(conn, :message)
    IO.inspect(message)
    case Repo.insert changeset do
      {:ok, _post} ->
        conn
          |> put_flash(:info, "Account created")
          |> put_session(:message, "test")
          #|> assign(:message, "test")
          |> configure_session(renew: true)
          |> redirect(to: "/index")
          #|> Mixshoulders.Guardian.Plug.sign_in(post)
        #IO.inspect(conn)
      {:error, changeset} ->
        IO.inspect(changeset)
        conn
          |>render("register.html", changeset: changeset)
    end

    conn
    #|> Mixshoulders.Guardian.Plug.sign_in(user)
    |> send_resp(204, "")
  end

  def register(conn, _params) do
    changeset = Mixshoulders.User.changeset(%Mixshoulders.User{}, %{})
    render conn, "register.html", changeset: changeset
    # send_resp(conn, 401, Poison.encode!(%{error: "Incorrect password"}))
  end

  def sign_in(conn, _params) do
    render conn, "signin.html"
  end

  def sign_out(conn, _params) do
    conn
    |> Mixshoulders.Guardian.Plug.sign_out()
    |> send_resp(204, "")
  end

  def show(conn, _params) do
    user = Mixshoulders.Guardian.Plug.current_resource(conn)

    send_resp(conn, 200, Poison.encode!(%{user: user}))
  end

  def test(conn, _params) do
    send_resp(conn, 200, 'received')
  end

end
