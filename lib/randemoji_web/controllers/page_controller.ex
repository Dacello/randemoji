defmodule RandemojiWeb.PageController do
  use RandemojiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
