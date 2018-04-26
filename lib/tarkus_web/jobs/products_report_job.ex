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
    send_email(content)

    {:reply, "E-mail enviado!", state}
  end

  defp send_email(content) do
    IO.puts "\n>>> send-email  - #{:os.system_time}\n======== #{content}"
  end
end
