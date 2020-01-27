defmodule RandemojiWeb.EmojiChannel do
  @moduledoc """
  A channel for subscribing to real-time updates for trip breaks
  Listens to the trip breaks data server which fetches new data
  every time a trip break is inserted or updated
  """

  use Phoenix.Channel

  @spec join(<<_::48>>, any, any) :: {:ok, any}
  def join("emojis", _params, socket) do
    {:ok, socket}
  end

  def handle_in("random_emoji", _params, socket) do
    {:ok, emoji} = Randemoji.Emojis.create_random_emoji()
    IO.inspect(emoji, label: "RANDO INC")
    push(socket, "new_emoji", Map.take(emoji, [:value]))
    {:noreply, socket}
  end

  def id(_socket), do: "emojis"
end
