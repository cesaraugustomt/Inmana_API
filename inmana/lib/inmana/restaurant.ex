defmodule Inmana.Restaurant do
  use Ecto.Schema
  import Ecto.Changeset

  alias Inmana.Supply

  @primary_key {:id, :binary_id, autogenerate: true}
  @required_params [:email, :name]
  @derive {Jason.Encoder, only: @required_params ++ [:id]}

  schema "restaurats" do
    field(:email, :string)
    field(:name, :string)

    has_many(:supplies, Supply)

    timestamps()
  end

  # validações de dados
  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:name, min: 2)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint([:email])
  end
end
