defmodule Randemoji.Repo do
  use Ecto.Repo,
    otp_app: :randemoji,
    adapter: Ecto.Adapters.Postgres
end
