
defmodule PhoenixCrudWeb.HelloController do
  use PhoenixCrudWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"msg" => msg}) do
    render(conn, "show.html", msg: msg)
  end

end
