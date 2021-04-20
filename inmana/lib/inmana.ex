defmodule Inmana do
  alias Inmana.Restaurants.Create

  # fachada
  defdelegate create_restaurant(params), to: Create, as: :call
end
