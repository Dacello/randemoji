defmodule RandemojiWeb.EmojiChannel do
  @moduledoc """
  A channel for subscribing to real-time updates for trip breaks
  Listens to the trip breaks data server which fetches new data
  every time a trip break is inserted or updated
  """

  use Phoenix.Channel

  def join("emojis", _params, socket) do
    {:ok, socket}
  end

  def handle_in("random_emoji", _params, socket) do
    {:ok, emoji} = Randemoji.Emojis.create_random_emoji()
    push(socket, "new_emoji", Map.take(emoji, [:value]))
    {:noreply, socket}
  end

  # def handle_out
  # def terminate

  def id(_socket), do: "emojis"
end
