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
    get "/books/new", BookController, :new
  end

  # Other scopes may use custom stacks.
  # scope "/api", PickABookWeb do
  #   pipe_through :api
  # end
end
