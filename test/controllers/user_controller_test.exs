defmodule Mixshoulders.UserControllerTest do
  use Mixshoulders.ConnCase

  test "GET /login", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Login"
  end
end
