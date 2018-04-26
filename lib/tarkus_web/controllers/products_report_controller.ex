defmodule TarkusWeb.ProductsReportController do
  use TarkusWeb, :controller

  def index(conn, %{"content" => content}) do
    IO.inspect content

    render(conn, "index.json", msg: content)
  end
end
