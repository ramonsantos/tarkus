defmodule Tarkus.ProductsReportJob do
  use GenServer

  def init(state), do: {:ok, state}

  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def report (content) do
    GenServer.call(__MODULE__, {:report, content})
  end

  def handle_call({:report, content}, _from, state) do
    {:reply, send_email(content), state}
  end

  defp send_email(content) do
    Tarkus.Email.send("ramonsantos.pe@gmail.com", content)
    |> Tarkus.Mailer.deliver_now
  end
end
