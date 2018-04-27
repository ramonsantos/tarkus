defmodule Tarkus.ProductsReportJobTest do
  use ExUnit.Case, async: true
  require IEx

  test "spawns buckets" do
    resp = Tarkus.ProductsReportJob.report("csv content...")

    assert is_map(resp)
    assert resp.html_body =~ "content"
    assert resp.subject == "Products Report"
  end
end
