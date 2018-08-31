defmodule Mixshoulders.PageController do
  use Mixshoulders.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

end
