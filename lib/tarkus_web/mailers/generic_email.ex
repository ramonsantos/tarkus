defmodule Tarkus.GenericEmail do
  import Bamboo.Email

  def send(recipient, msg) do
    new_email()
    |> to(recipient)
    |> from("ramonsantos.wk@gmail.com")
    |> subject("Products Report")
    |> html_body(msg)
    |> text_body(msg)
  end
end
