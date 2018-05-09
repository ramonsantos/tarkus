defmodule Tarkus.MailerTest do
  use ExUnit.Case, async: true
  use Bamboo.Test

  @recipient "ramonsantos.pe@gmail.com"
  @csv_content "csv content..."

  test "report e-mail" do
    email = Tarkus.GenericEmail.send(@recipient, @csv_content)

    assert email.to == @recipient
    assert email.subject == "Products Report"
    assert email.text_body =~ "csv content"
  end

  test "is sending e-mail" do
    email = Tarkus.GenericEmail.send(@recipient, @csv_content)
    assert_delivered_email Tarkus.Mailer.deliver_now(email)
  end
end
