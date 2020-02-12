defmodule CorneliaKelinskeWeb.Router do
  use CorneliaKelinskeWeb, :router

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

  scope "/", CorneliaKelinskeWeb do
    pipe_through :browser

    get "/", EnController, :index
    post "/contact", ContactController, :create
  end

  scope "/en", CorneliaKelinskeWeb do
    pipe_through :browser

    get "/", EnController, :index
    get "/overview", EnController, :overview
    get "/aboutme", EnController, :aboutme
    get "/feedback", EnController, :feedback
    get "/interpretation", EnController, :interpretation
    get "/translation", EnController, :translation
    get "/licenses", EnController, :licenses
    get "/contact", ContactController, :new
  end

  scope "/de", CorneliaKelinskeWeb do
    pipe_through :browser

    get "/", DeController, :index
    get "/ubermich", DeController, :ubermich
    get "/allgemeines", DeController, :allgemeines
    get "/feedback", DeController, :feedback
    get "/ubersetzen", DeController, :ubersetzen
    get "/dolmetschen", DeController, :dolmetschen
    get "/linzenzen", DeController, :linzenzen
    get "/kontakt", ContactController, :neu
  end

  if Application.get_env(:cornelia_kelinske, :env) === :dev do
    forward("/sent_email", Bamboo.SentEmailViewerPlug)
  end
end
