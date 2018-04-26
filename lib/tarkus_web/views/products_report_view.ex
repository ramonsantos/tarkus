defmodule TarkusWeb.ProductsReportView do
  use TarkusWeb, :view

  def render("index.json", %{msg: msg}) do
   %{msg: msg}
  end
end
