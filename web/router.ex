defmodule Mixshoulders.Router do
  use Mixshoulders.Web, :router

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

  pipeline :unauthorized do
    plug :fetch_session
  end

  pipeline :authorized do
    plug :fetch_session
    plug Guardian.Plug.Pipeline, module: GuardianDemo.Guardian,
      error_handler: GuardianDemo.AuthErrorHandler
    plug Guardian.Plug.VerifySession
    plug Guardian.Plug.LoadResource
  end

  # scope "/api", GuardianDemoWeb do
  #   pipe_through :api

  #   scope "/users" do
  #     scope "/" do
  #       pipe_through :unauthorized

  #       post "/sign-in", UserController, :sign_in
  #     end

  #     scope "/" do
  #       pipe_through :authorized

  #       post "/sign-out", UserController, :sign_out
  #       get "/me", UserController, :show
  #     end
  #   end
  # end

  scope "/", Mixshoulders do
    pipe_through :browser

    get "/login", UserController, :sign_in
    post "/login", UserController, :login

    post "/logout", UserController, :logout
  end

  scope "/", Mixshoulders do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end



  # Other scopes may use custom stacks.
  # scope "/api", Mixshoulders do
  #   pipe_through :api
  # end


end

