defmodule Phoenix.VueWeb.RoomChannel do
  use Phoenix.VueWeb, :channel

  def join("room:lobby", payload, socket) do
    if authorized?(payload) do
      send(self, :welcome)

      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (room:lobby).
  def handle_in("shout", payload, socket) do
    broadcast socket, "shout", payload

    {:noreply, socket}
  end

  def handle_info(:welcome, socket) do
    pid = Map.get(socket, :channel_pid)

    push socket, "welcome", %{pid: Kernel.inspect(pid)}

    {:noreply, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end
end