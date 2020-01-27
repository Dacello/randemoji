defmodule Randemoji.Repo.Migrations.CreateEmojis do
  use Ecto.Migration

  def change do
    create table(:emojis) do
      add(:name, :string)
      add(:value, :string)
      timestamps()
    end
  end
end
