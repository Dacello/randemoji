defmodule RandemojiWeb.EmojisController do
  use RandemojiWeb, :controller

  alias Randemoji.{Emojis, Emoji}

  def index(conn, _params) do
    changeset = Emoji.changeset(%Emoji{})
    emojis = Emojis.list_emojis()
    render(conn, "index.html", emojis: emojis, changeset: changeset)
  end

  def create(conn, _params) do
    case Emojis.create_random_emoji() do
      {:ok, emoji} ->
        RandemojiWeb.Endpoint.broadcast!("emojis", "new_emoji", Map.take(emoji, [:value]))

        conn
        |> put_flash(:success, "Randemoji #{emoji.value} Sent!")
        |> redirect(to: RandemojiWeb.Router.Helpers.emojis_path(conn, :index))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "index.html", changeset: changeset)
    end
  end
end
