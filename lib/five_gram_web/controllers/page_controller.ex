defmodule FiveGramWeb.PageController do
  use FiveGramWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
