defmodule BigbrainWeb.PageController do
  use BigbrainWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
