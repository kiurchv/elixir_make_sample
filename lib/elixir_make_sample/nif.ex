defmodule ElixirMakeSample.Nif do
  @on_load {:load_nif, 0}
  @compile {:autoload, false}

  @moduledoc false

  def load_nif do
    nif_binary = Application.app_dir(:elixir_make_sample, "priv/elixir_make_sample_nif")
    :erlang.load_nif(to_charlist(nif_binary), 0)
  end

  def hello do
    :erlang.nif_error(:nif_not_loaded)
  end
end
