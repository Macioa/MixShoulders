defmodule Mixshoulders.ShoulderController do
  #import Plug.Conn
  use Mixshoulders.Web, :controller

  #alias Mixshoulders.Shoulder

  # def add(conn, _params) do
  #   #IO.Inpsect(conn)
  #   #render conn, "add.html"
  # end

  def add(conn, _params) do
    IO.inspect(conn)
    render conn, "add.html"
    # send_resp(conn, 401, Poison.encode!(%{error: "Incorrect password"}))
  end

end
