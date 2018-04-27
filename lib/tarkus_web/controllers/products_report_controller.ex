defmodule TarkusWeb.ProductsReportController do
  use TarkusWeb, :controller

  def index(conn, %{"content" => content}) do
    Tarkus.ProductsReportJob.report(content)

    render(conn, "index.json", msg: content)
  end
end
