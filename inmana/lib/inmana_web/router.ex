defmodule InmanaWeb.Router do
  use InmanaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InmanaWeb do
    pipe_through :api

    get "/", WelcomeController, :index
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: InmanaWeb.Telemetry
    end
  end
end
