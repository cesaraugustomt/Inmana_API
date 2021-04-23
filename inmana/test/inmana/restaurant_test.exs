defmodule Inmana.RestaurantTest do
  use Inmana.DataCase

  alias Ecto.Changeset
  alias Inmana.Restaurant

  describe "changeset/1" do
    test "when all params are valid, returns a valid changeset" do
      params = %{name: "Siri cascudo", email: "siri@cascudo.com"}
      response = Restaurant.changeset(params)

      assert %Changeset{changes: %{email: "siri@cascudo.com", name: "Siri cascudo"}, valid?: true} =
               response
    end

    test "when there are invalid params, returns an invalid changeset" do
      params = %{name: "S", email: ""}
      response = Restaurant.changeset(params)
      expect_response = %{email: ["can't be blank"], name: ["should be at least 2 character(s)"]}

      assert %Changeset{valid?: false} = response
      assert errors_on(response) == expect_response
    end
  end
end
