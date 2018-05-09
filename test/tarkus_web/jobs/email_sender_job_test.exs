defmodule Tarkus.EmailSenderJobTest do
  use ExUnit.Case, async: true

  test "sending emai" do
    resp = Tarkus.EmailSenderJob.send_email("csv content...")

    assert is_map(resp)
    assert resp.html_body =~ "content"
    assert resp.subject == "Products Report"
  end
end
