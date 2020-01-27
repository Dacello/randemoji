defmodule RandemojiWeb.Router do
  use RandemojiWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", RandemojiWeb do
    pipe_through(:browser)

    get("/", EmojisController, :index)

    resources("/emojis", EmojisController, only: [:index, :new, :create])
  end
end
