defmodule Demo.Emoji do
  use Ecto.Schema
  import Ecto.Changeset, warn: false

  @type t :: %__MODULE__{}

  @timestamps_opts [type: :naive_datetime_usec]

  schema "emojis" do
    field(:value, :string)

    timestamps()
  end

  def changeset(emoji, attrs \\ %{}) do
    emoji
    |> cast(attrs, [:value])
    |> validate_required([:value])
  end
end
