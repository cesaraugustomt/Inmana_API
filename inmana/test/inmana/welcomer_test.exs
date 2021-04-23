defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user is special, returns a special message" do
      # setup
      # entrada
      params = %{"name" => "banana", "age" => "42"}
      # saida
      expected_result = {:ok, "Welcome banana"}

      # verificação
      result = Welcomer.welcome(params)

      # verificação com assert
      assert result == expected_result
    end

    test "when the user is not special, returns a message" do
      params = %{"name" => "Cesar", "age" => "23"}
      expected_result = {:ok, "Welcome cesar"}

      result = Welcomer.welcome(params)
      assert result == expected_result
    end

    test "when the user unde rage, returns an error" do
      params = %{"name" => "Cesar", "age" => "17"}
      expected_result = {:error, "You shall not pass cesar"}

      result = Welcomer.welcome(params)
      assert result == expected_result
    end
  end
end
