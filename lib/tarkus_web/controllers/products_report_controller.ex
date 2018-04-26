defmodule TarkusWeb.ProductsReportController do
  use TarkusWeb, :controller

  def index(conn, %{"content" => content}) do
    msg = Tarkus.ProductsReportJob.report(content)

    render(conn, "index.json", msg: "#{msg} --> #{content}")
  end
end
