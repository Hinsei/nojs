defmodule NojsWeb.PageController do
  use NojsWeb, :controller
  use Drab.Controller

  def index(conn, _params) do
    render conn, "index.html", todos: []
  end
end
