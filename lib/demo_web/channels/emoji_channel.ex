defmodule DemoWeb.EmojiChannel do
  @moduledoc """
  A channel for subscribing to real-time updates for trip breaks
  Listens to the trip breaks data server which fetches new data
  every time a trip break is inserted or updated
  """

  use Phoenix.Channel

  def join("emojis", _params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: "emojis"
end
