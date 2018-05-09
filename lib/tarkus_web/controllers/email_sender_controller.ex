defmodule TarkusWeb.EmailSenderController do
  use TarkusWeb, :controller

  def index(conn, %{"email" => email}) do
    Tarkus.EmailSenderJob.send_email(email)

    render(conn, "index.json", msg: email)
  end
end
