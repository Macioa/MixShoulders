defmodule Mixshoulders.UserControllerTest do
  use Mixshoulders.ConnCase

  test "GET /register", %{conn: conn} do
    changeset = Mixshoulders.User.changeset(%Mixshoulders.User{}, %{})
    conn = get conn, "/register"
    assert html_response(conn, 200) =~ Phoenix.View.render_to_string(Mixshoulders.UserView, "register.html", [changeset: changeset])
  end
end
