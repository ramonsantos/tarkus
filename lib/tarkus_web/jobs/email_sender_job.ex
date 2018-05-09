defmodule Tarkus.EmailSenderJob do
  use GenServer

  def init(state), do: {:ok, state}

  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def send_email(email) do
    GenServer.call(__MODULE__, {:send_email, email})
  end

  def handle_call({:send_email, email}, _from, state) do
    {:reply, send_email_call(email), state}
  end

  defp send_email_call(email) do
    Tarkus.GenericEmail.send("ramonsantos.pe@gmail.com", email)
    |> Tarkus.Mailer.deliver_later
  end
end
