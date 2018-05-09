defmodule Tarkus.EmailSenderControllerTest do
  use ExUnit.Case, async: true
  use TarkusWeb.ConnCase

  test "status 200 when valid params", %{conn: conn} do
    conn = post conn, email_sender_path(conn, :index), %{email: "content"}

    assert conn.status == 200
  end
end
