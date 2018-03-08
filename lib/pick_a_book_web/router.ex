defmodule PickABookWeb.Router do
  use PickABookWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PickABookWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/books", BookController
    resources "/registrations", UserController
  end
end
