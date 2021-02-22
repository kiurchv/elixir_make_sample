defmodule ElixirMakeSample do
  @moduledoc """
  Documentation for `ElixirMakeSample`.
  """

  alias ElixirMakeSample.Nif

  @doc """
  Hello world.

  ## Examples

      iex> ElixirMakeSample.hello()
      :world

  """
  defdelegate hello(), to: Nif
end
