defmodule Tarkus.MailerTest do
  use ExUnit.Case, async: true
  use Bamboo.Test

  @recipient "ramonsantos.pe@gmail.com"
  @csv_content "csv content..."

  test "report e-mail" do
    email_report = Tarkus.ReportEmail.send(@recipient, @csv_content)

    assert email_report.to == @recipient
    assert email_report.subject == "Products Report"
    assert email_report.text_body =~ "csv content"
  end

  test "is sending e-mail" do
    email_report = Tarkus.ReportEmail.send(@recipient, @csv_content)
    assert_delivered_email Tarkus.Mailer.deliver_now(email_report)
  end
end
