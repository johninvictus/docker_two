defmodule DockerTwoWeb.PageController do
  use DockerTwoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
