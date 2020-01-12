
defmodule PhoenixCrudWeb.HelloController do
  use PhoenixCrudWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end


end
