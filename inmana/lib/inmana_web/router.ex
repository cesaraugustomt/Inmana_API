defmodule InmanaWeb.Router do
  use InmanaWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", InmanaWeb do
    pipe_through(:api)

    get("/", WelcomeController, :index)

    post("/restaurants", RestaurantsController, :create)

    post("/supplies", SuppliesController, :create)
    resources("/supplies", SuppliesController, only: [:create, :show])
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through([:fetch_session, :protect_from_forgery])
      live_dashboard("/dashboard", metrics: InmanaWeb.Telemetry)
    end
  end

  if Mix.env() == :dev do
    forward("/sent_emails", Bamboo.SentEmailViewerPlug)
  end
end
